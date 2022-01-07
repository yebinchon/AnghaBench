
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {TYPE_2__* f_dentry; TYPE_1__* f_op; } ;
struct TYPE_4__ {int d_inode; } ;
struct TYPE_3__ {long (* unlocked_ioctl ) (struct file*,unsigned int,unsigned long) ;long (* ioctl ) (int ,struct file*,unsigned int,unsigned long) ;} ;


 long ENOSYS ;
 long stub1 (struct file*,unsigned int,unsigned long) ;
 long stub2 (int ,struct file*,unsigned int,unsigned long) ;

__attribute__((used)) static long tty_ioctl(struct file *f, unsigned op, unsigned long param)
{





 if (f->f_op->ioctl) {
  return f->f_op->ioctl(f->f_dentry->d_inode, f, op, param);
 }
 return -ENOSYS;
}
