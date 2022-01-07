
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct fb_info {int dummy; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 long do_fb_ioctl (struct fb_info*,unsigned int,unsigned long) ;
 int iminor (struct inode*) ;
 struct fb_info** registered_fb ;

__attribute__((used)) static long fb_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 struct inode *inode = file->f_path.dentry->d_inode;
 int fbidx = iminor(inode);
 struct fb_info *info = registered_fb[fbidx];

 return do_fb_ioctl(info, cmd, arg);
}
