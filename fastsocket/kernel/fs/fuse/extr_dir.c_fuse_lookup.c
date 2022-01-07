
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct inode {int i_sb; } ;
struct fuse_entry_out {int dummy; } ;
struct dentry {int * d_op; int d_name; } ;


 int EIO ;
 int ENOENT ;
 struct dentry* ERR_PTR (int) ;
 scalar_t__ FUSE_ROOT_ID ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int fuse_change_entry_timeout (struct dentry*,struct fuse_entry_out*) ;
 int fuse_dentry_operations ;
 int fuse_invalidate_entry_cache (struct dentry*) ;
 int fuse_lookup_name (int ,scalar_t__,int *,struct fuse_entry_out*,struct inode**) ;
 struct dentry* fuse_materialise_dentry (struct dentry*,struct inode*) ;
 scalar_t__ get_node_id (struct inode*) ;
 int iput (struct inode*) ;

__attribute__((used)) static struct dentry *fuse_lookup(struct inode *dir, struct dentry *entry,
      struct nameidata *nd)
{
 int err;
 struct fuse_entry_out outarg;
 struct inode *inode;
 struct dentry *newent;
 bool outarg_valid = 1;

 err = fuse_lookup_name(dir->i_sb, get_node_id(dir), &entry->d_name,
          &outarg, &inode);
 if (err == -ENOENT) {
  outarg_valid = 0;
  err = 0;
 }
 if (err)
  goto out_err;

 err = -EIO;
 if (inode && get_node_id(inode) == FUSE_ROOT_ID)
  goto out_iput;

 newent = fuse_materialise_dentry(entry, inode);
 err = PTR_ERR(newent);
 if (IS_ERR(newent))
  goto out_err;

 entry = newent ? newent : entry;
 entry->d_op = &fuse_dentry_operations;
 if (outarg_valid)
  fuse_change_entry_timeout(entry, &outarg);
 else
  fuse_invalidate_entry_cache(entry);

 return newent;

 out_iput:
 iput(inode);
 out_err:
 return ERR_PTR(err);
}
