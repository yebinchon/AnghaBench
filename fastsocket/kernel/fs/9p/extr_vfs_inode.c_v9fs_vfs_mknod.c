
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_ino; } ;
struct TYPE_2__ {int name; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef int dev_t ;


 int EINVAL ;
 int ENOMEM ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int P9_DEBUG_VFS ;
 int P9_DPRINTK (int ,char*,int ,int ,int,int,int) ;
 scalar_t__ S_ISBLK (int) ;
 scalar_t__ S_ISCHR (int) ;
 scalar_t__ S_ISFIFO (int) ;
 char* __getname () ;
 int __putname (char*) ;
 int new_valid_dev (int ) ;
 int sprintf (char*,char*,int,int) ;
 int v9fs_vfs_mkspecial (struct inode*,struct dentry*,int,char*) ;

__attribute__((used)) static int
v9fs_vfs_mknod(struct inode *dir, struct dentry *dentry, int mode, dev_t rdev)
{
 int retval;
 char *name;

 P9_DPRINTK(P9_DEBUG_VFS,
  " %lu,%s mode: %x MAJOR: %u MINOR: %u\n", dir->i_ino,
  dentry->d_name.name, mode, MAJOR(rdev), MINOR(rdev));

 if (!new_valid_dev(rdev))
  return -EINVAL;

 name = __getname();
 if (!name)
  return -ENOMEM;

 if (S_ISBLK(mode))
  sprintf(name, "b %u %u", MAJOR(rdev), MINOR(rdev));
 else if (S_ISCHR(mode))
  sprintf(name, "c %u %u", MAJOR(rdev), MINOR(rdev));
 else if (S_ISFIFO(mode))
  *name = 0;
 else {
  __putname(name);
  return -EINVAL;
 }

 retval = v9fs_vfs_mkspecial(dir, dentry, mode, name);
 __putname(name);

 return retval;
}
