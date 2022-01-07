
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {int dummy; } ;
struct qstr {int dummy; } ;
struct inode {int i_mutex; int i_mode; } ;
struct dentry {int dummy; } ;


 int ENOENT ;
 int ENOTDIR ;
 int S_ISDIR (int ) ;
 struct dentry* d_find_alias (struct inode*) ;
 struct dentry* d_lookup (struct dentry*,struct qstr*) ;
 int dput (struct dentry*) ;
 int fuse_inode_eq ;
 int fuse_invalidate_attr (struct inode*) ;
 int fuse_invalidate_entry (struct dentry*) ;
 struct inode* ilookup5 (struct super_block*,int ,int ,int *) ;
 int iput (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int fuse_reverse_inval_entry(struct super_block *sb, u64 parent_nodeid,
        struct qstr *name)
{
 int err = -ENOTDIR;
 struct inode *parent;
 struct dentry *dir;
 struct dentry *entry;

 parent = ilookup5(sb, parent_nodeid, fuse_inode_eq, &parent_nodeid);
 if (!parent)
  return -ENOENT;

 mutex_lock(&parent->i_mutex);
 if (!S_ISDIR(parent->i_mode))
  goto unlock;

 err = -ENOENT;
 dir = d_find_alias(parent);
 if (!dir)
  goto unlock;

 entry = d_lookup(dir, name);
 dput(dir);
 if (!entry)
  goto unlock;

 fuse_invalidate_attr(parent);
 fuse_invalidate_entry(entry);
 dput(entry);
 err = 0;

 unlock:
 mutex_unlock(&parent->i_mutex);
 iput(parent);
 return err;
}
