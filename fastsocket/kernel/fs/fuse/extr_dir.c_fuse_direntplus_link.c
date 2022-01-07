
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct qstr {int len; char* name; int hash; } ;
struct inode {int i_mode; int i_sb; } ;
struct fuse_inode {int nlookup; } ;
struct TYPE_5__ {int mode; } ;
struct fuse_entry_out {scalar_t__ nodeid; TYPE_2__ attr; int generation; } ;
struct fuse_dirent {int namelen; char* name; } ;
struct fuse_direntplus {struct fuse_dirent dirent; struct fuse_entry_out entry_out; } ;
struct fuse_conn {int lock; } ;
struct TYPE_4__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {int * d_op; struct inode* d_inode; } ;


 int EIO ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int S_IFMT ;
 struct dentry* d_alloc (struct dentry*,struct qstr*) ;
 int d_drop (struct dentry*) ;
 int d_invalidate (struct dentry*) ;
 struct dentry* d_lookup (struct dentry*,struct qstr*) ;
 int dput (struct dentry*) ;
 int entry_attr_timeout (struct fuse_entry_out*) ;
 int full_name_hash (char*,int) ;
 int fuse_change_attributes (struct inode*,TYPE_2__*,int ,int ) ;
 int fuse_change_entry_timeout (struct dentry*,struct fuse_entry_out*) ;
 int fuse_dentry_operations ;
 struct inode* fuse_iget (int ,scalar_t__,int ,TYPE_2__*,int ,int ) ;
 struct dentry* fuse_materialise_dentry (struct dentry*,struct inode*) ;
 int fuse_valid_type (int) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 scalar_t__ get_node_id (struct inode*) ;
 scalar_t__ invalid_nodeid (scalar_t__) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int fuse_direntplus_link(struct file *file,
    struct fuse_direntplus *direntplus,
    u64 attr_version)
{
 int err;
 struct fuse_entry_out *o = &direntplus->entry_out;
 struct fuse_dirent *dirent = &direntplus->dirent;
 struct dentry *parent = file->f_path.dentry;
 struct qstr name = { .len = dirent->namelen, .name = dirent->name };
 struct dentry *dentry;
 struct dentry *alias;
 struct inode *dir = parent->d_inode;
 struct fuse_conn *fc;
 struct inode *inode;

 if (!o->nodeid) {







  return 0;
 }

 if (name.name[0] == '.') {




  if (name.len == 1)
   return 0;
  if (name.name[1] == '.' && name.len == 2)
   return 0;
 }

 if (invalid_nodeid(o->nodeid))
  return -EIO;
 if (!fuse_valid_type(o->attr.mode))
  return -EIO;

 fc = get_fuse_conn(dir);

 name.hash = full_name_hash(name.name, name.len);
 dentry = d_lookup(parent, &name);
 if (dentry) {
  inode = dentry->d_inode;
  if (!inode) {
   d_drop(dentry);
  } else if (get_node_id(inode) != o->nodeid ||
      ((o->attr.mode ^ inode->i_mode) & S_IFMT)) {
   err = d_invalidate(dentry);
   if (err)
    goto out;
  } else if (is_bad_inode(inode)) {
   err = -EIO;
   goto out;
  } else {
   struct fuse_inode *fi;
   fi = get_fuse_inode(inode);
   spin_lock(&fc->lock);
   fi->nlookup++;
   spin_unlock(&fc->lock);

   fuse_change_attributes(inode, &o->attr,
            entry_attr_timeout(o),
            attr_version);





   goto found;
  }
  dput(dentry);
 }

 dentry = d_alloc(parent, &name);
 err = -ENOMEM;
 if (!dentry)
  goto out;
 dentry->d_op = &fuse_dentry_operations;

 inode = fuse_iget(dir->i_sb, o->nodeid, o->generation,
     &o->attr, entry_attr_timeout(o), attr_version);
 if (!inode)
  goto out;

 alias = fuse_materialise_dentry(dentry, inode);
 err = PTR_ERR(alias);
 if (IS_ERR(alias))
  goto out;

 if (alias) {
  dput(dentry);
  dentry = alias;
 }

found:
 fuse_change_entry_timeout(dentry, o);

 err = 0;
out:
 dput(dentry);
 return err;
}
