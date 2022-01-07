
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_4__ {int dentry; } ;
struct file {int f_mode; TYPE_1__ f_path; } ;
typedef int fmode_t ;
struct TYPE_6__ {int fd; } ;
struct TYPE_5__ {int mode; int fd; } ;


 int ENOMEM ;
 TYPE_3__* FILE_HOSTFS_I (struct file*) ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 TYPE_2__* HOSTFS_I (struct inode*) ;
 int append ;
 int close_file (int*) ;
 char* dentry_name (int ,int ) ;
 int kfree (char*) ;
 int open_file (char*,int,int,int ) ;

int hostfs_file_open(struct inode *ino, struct file *file)
{
 char *name;
 fmode_t mode = 0;
 int r = 0, w = 0, fd;

 mode = file->f_mode & (FMODE_READ | FMODE_WRITE);
 if ((mode & HOSTFS_I(ino)->mode) == mode)
  return 0;





 if (HOSTFS_I(ino)->fd != -1) {
  close_file(&HOSTFS_I(ino)->fd);
  HOSTFS_I(ino)->fd = -1;
 }

 HOSTFS_I(ino)->mode |= mode;
 if (HOSTFS_I(ino)->mode & FMODE_READ)
  r = 1;
 if (HOSTFS_I(ino)->mode & FMODE_WRITE)
  w = 1;
 if (w)
  r = 1;

 name = dentry_name(file->f_path.dentry, 0);
 if (name == ((void*)0))
  return -ENOMEM;

 fd = open_file(name, r, w, append);
 kfree(name);
 if (fd < 0)
  return fd;
 FILE_HOSTFS_I(file)->fd = fd;

 return 0;
}
