
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int dsp_minor; int mixer_minor; } ;


 int EINVAL ;
 TYPE_1__ dev ;
 int dsp_release (struct file*) ;
 int iminor (struct inode*) ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static int dev_release(struct inode *inode, struct file *file)
{
 int minor = iminor(inode);
 int err = 0;

 lock_kernel();
 if (minor == dev.dsp_minor)
  err = dsp_release(file);
 else if (minor == dev.mixer_minor) {

 } else
  err = -EINVAL;
 unlock_kernel();
 return err;
}
