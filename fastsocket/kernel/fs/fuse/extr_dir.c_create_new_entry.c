
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct inode {int i_mode; int i_sb; } ;
struct TYPE_10__ {int error; } ;
struct TYPE_11__ {int numargs; TYPE_4__ h; TYPE_3__* args; } ;
struct TYPE_7__ {int nodeid; } ;
struct TYPE_8__ {TYPE_1__ h; } ;
struct fuse_req {TYPE_5__ out; TYPE_2__ in; } ;
struct TYPE_12__ {int mode; } ;
struct fuse_entry_out {int nodeid; TYPE_6__ attr; int generation; } ;
struct fuse_conn {int minor; int inst_mutex; } ;
struct dentry {int dummy; } ;
typedef int outarg ;
struct TYPE_9__ {int size; struct fuse_entry_out* value; } ;


 int EBUSY ;
 int EIO ;
 int ENOMEM ;
 int FUSE_COMPAT_ENTRY_OUT_SIZE ;
 scalar_t__ IS_ERR (struct fuse_req*) ;
 int PTR_ERR (struct fuse_req*) ;
 int S_IFMT ;
 scalar_t__ S_ISDIR (int ) ;
 struct dentry* d_find_alias (struct inode*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dput (struct dentry*) ;
 int entry_attr_timeout (struct fuse_entry_out*) ;
 int fuse_change_entry_timeout (struct dentry*,struct fuse_entry_out*) ;
 struct fuse_req* fuse_get_req_nopages (struct fuse_conn*) ;
 struct inode* fuse_iget (int ,int ,int ,TYPE_6__*,int ,int ) ;
 int fuse_invalidate_attr (struct inode*) ;
 int fuse_put_request (struct fuse_conn*,struct fuse_req*) ;
 int fuse_request_send (struct fuse_conn*,struct fuse_req*) ;
 int fuse_send_forget (struct fuse_conn*,struct fuse_req*,int ,int) ;
 int get_node_id (struct inode*) ;
 scalar_t__ invalid_nodeid (int ) ;
 int iput (struct inode*) ;
 int memset (struct fuse_entry_out*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int create_new_entry(struct fuse_conn *fc, struct fuse_req *req,
       struct inode *dir, struct dentry *entry,
       int mode)
{
 struct fuse_entry_out outarg;
 struct inode *inode;
 int err;
 struct fuse_req *forget_req;

 forget_req = fuse_get_req_nopages(fc);
 if (IS_ERR(forget_req)) {
  fuse_put_request(fc, req);
  return PTR_ERR(forget_req);
 }

 memset(&outarg, 0, sizeof(outarg));
 req->in.h.nodeid = get_node_id(dir);
 req->out.numargs = 1;
 if (fc->minor < 9)
  req->out.args[0].size = FUSE_COMPAT_ENTRY_OUT_SIZE;
 else
  req->out.args[0].size = sizeof(outarg);
 req->out.args[0].value = &outarg;
 fuse_request_send(fc, req);
 err = req->out.h.error;
 fuse_put_request(fc, req);
 if (err)
  goto out_put_forget_req;

 err = -EIO;
 if (invalid_nodeid(outarg.nodeid))
  goto out_put_forget_req;

 if ((outarg.attr.mode ^ mode) & S_IFMT)
  goto out_put_forget_req;

 inode = fuse_iget(dir->i_sb, outarg.nodeid, outarg.generation,
     &outarg.attr, entry_attr_timeout(&outarg), 0);
 if (!inode) {
  fuse_send_forget(fc, forget_req, outarg.nodeid, 1);
  return -ENOMEM;
 }
 fuse_put_request(fc, forget_req);

 if (S_ISDIR(inode->i_mode)) {
  struct dentry *alias;
  mutex_lock(&fc->inst_mutex);
  alias = d_find_alias(inode);
  if (alias) {

   mutex_unlock(&fc->inst_mutex);
   dput(alias);
   iput(inode);
   return -EBUSY;
  }
  d_instantiate(entry, inode);
  mutex_unlock(&fc->inst_mutex);
 } else
  d_instantiate(entry, inode);

 fuse_change_entry_timeout(entry, &outarg);
 fuse_invalidate_attr(dir);
 return 0;

 out_put_forget_req:
 fuse_put_request(fc, forget_req);
 return err;
}
