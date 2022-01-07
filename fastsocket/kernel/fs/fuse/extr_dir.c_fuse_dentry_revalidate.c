
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct nameidata {int dummy; } ;
struct inode {int i_mode; } ;
struct TYPE_4__ {int error; } ;
struct TYPE_5__ {TYPE_1__ h; } ;
struct fuse_req {TYPE_2__ out; } ;
struct fuse_inode {int nlookup; } ;
struct TYPE_6__ {int mode; } ;
struct fuse_entry_out {TYPE_3__ attr; int nodeid; } ;
struct fuse_conn {int lock; } ;
struct dentry {int d_name; struct inode* d_inode; } ;


 int ENOENT ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct fuse_req*) ;
 int PTR_ERR (struct fuse_req*) ;
 int S_IFMT ;
 scalar_t__ S_ISDIR (int) ;
 int d_drop (struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 int entry_attr_timeout (struct fuse_entry_out*) ;
 int fuse_change_attributes (struct inode*,TYPE_3__*,int ,int ) ;
 int fuse_change_entry_timeout (struct dentry*,struct fuse_entry_out*) ;
 scalar_t__ fuse_dentry_time (struct dentry*) ;
 int fuse_get_attr_version (struct fuse_conn*) ;
 struct fuse_req* fuse_get_req_nopages (struct fuse_conn*) ;
 int fuse_lookup_init (struct fuse_conn*,struct fuse_req*,int ,int *,struct fuse_entry_out*) ;
 int fuse_put_request (struct fuse_conn*,struct fuse_req*) ;
 int fuse_request_send (struct fuse_conn*,struct fuse_req*) ;
 int fuse_send_forget (struct fuse_conn*,struct fuse_req*,int ,int) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 scalar_t__ get_jiffies_64 () ;
 int get_node_id (struct inode*) ;
 scalar_t__ have_submounts (struct dentry*) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int shrink_dcache_parent (struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int fuse_dentry_revalidate(struct dentry *entry, struct nameidata *nd)
{
 struct inode *inode = entry->d_inode;
 int ret;

 if (inode && is_bad_inode(inode))
  goto invalid;
 else if (fuse_dentry_time(entry) < get_jiffies_64()) {
  int err;
  struct fuse_entry_out outarg;
  struct fuse_conn *fc;
  struct fuse_req *req;
  struct fuse_req *forget_req;
  struct dentry *parent;
  u64 attr_version;


  if (!inode)
   goto invalid;

  fc = get_fuse_conn(inode);
  req = fuse_get_req_nopages(fc);
  ret = PTR_ERR(req);
  if (IS_ERR(req))
   goto out;

  forget_req = fuse_get_req_nopages(fc);
  if (IS_ERR(forget_req)) {
   fuse_put_request(fc, req);
   ret = -ENOMEM;
   goto out;
  }

  attr_version = fuse_get_attr_version(fc);

  parent = dget_parent(entry);
  fuse_lookup_init(fc, req, get_node_id(parent->d_inode),
     &entry->d_name, &outarg);
  fuse_request_send(fc, req);
  dput(parent);
  err = req->out.h.error;
  fuse_put_request(fc, req);

  if (!err && !outarg.nodeid)
   err = -ENOENT;
  if (!err) {
   struct fuse_inode *fi = get_fuse_inode(inode);
   if (outarg.nodeid != get_node_id(inode)) {
    fuse_send_forget(fc, forget_req,
       outarg.nodeid, 1);
    goto invalid;
   }
   spin_lock(&fc->lock);
   fi->nlookup++;
   spin_unlock(&fc->lock);
  }
  fuse_put_request(fc, forget_req);
  if (err || (outarg.attr.mode ^ inode->i_mode) & S_IFMT)
   goto invalid;

  fuse_change_attributes(inode, &outarg.attr,
           entry_attr_timeout(&outarg),
           attr_version);
  fuse_change_entry_timeout(entry, &outarg);
 }
 ret = 1;
out:
 return ret;

invalid:
 ret = 0;
 if (inode && S_ISDIR(inode->i_mode)) {
  if (have_submounts(entry)) {
   ret = 1;
   goto out;
  }
  shrink_dcache_parent(entry);
 }
 d_drop(entry);
 goto out;
}
