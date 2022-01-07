
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_2__ {int i_mode; } ;


 int EEXIST ;
 int EIO ;
 int ENOTDIR ;
 int S_ISDIR (int ) ;
 int simple_rename (struct inode*,struct dentry*,struct inode*,struct dentry*) ;

__attribute__((used)) static int cgroup_rename(struct inode *old_dir, struct dentry *old_dentry,
       struct inode *new_dir, struct dentry *new_dentry)
{
 if (!S_ISDIR(old_dentry->d_inode->i_mode))
  return -ENOTDIR;
 if (new_dentry->d_inode)
  return -EEXIST;
 if (old_dir != new_dir)
  return -EIO;
 return simple_rename(old_dir, old_dentry, new_dir, new_dentry);
}
