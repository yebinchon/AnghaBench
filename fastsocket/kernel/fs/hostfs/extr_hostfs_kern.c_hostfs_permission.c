
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;


 int ENOMEM ;
 int MAY_EXEC ;
 int MAY_READ ;
 int MAY_WRITE ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISSOCK (int ) ;
 int access_file (char*,int,int,int) ;
 int generic_permission (struct inode*,int,int *) ;
 char* inode_name (struct inode*,int ) ;
 int kfree (char*) ;

int hostfs_permission(struct inode *ino, int desired)
{
 char *name;
 int r = 0, w = 0, x = 0, err;

 if (desired & MAY_READ) r = 1;
 if (desired & MAY_WRITE) w = 1;
 if (desired & MAY_EXEC) x = 1;
 name = inode_name(ino, 0);
 if (name == ((void*)0))
  return -ENOMEM;

 if (S_ISCHR(ino->i_mode) || S_ISBLK(ino->i_mode) ||
     S_ISFIFO(ino->i_mode) || S_ISSOCK(ino->i_mode))
  err = 0;
 else
  err = access_file(name, r, w, x);
 kfree(name);
 if (!err)
  err = generic_permission(ino, desired, ((void*)0));
 return err;
}
