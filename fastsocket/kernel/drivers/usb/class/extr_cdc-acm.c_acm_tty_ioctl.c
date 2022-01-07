
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct acm* driver_data; } ;
struct file {int dummy; } ;
struct acm {int dummy; } ;


 int ACM_READY (struct acm*) ;
 int EINVAL ;
 int ENOIOCTLCMD ;

__attribute__((used)) static int acm_tty_ioctl(struct tty_struct *tty, struct file *file,
     unsigned int cmd, unsigned long arg)
{
 struct acm *acm = tty->driver_data;

 if (!ACM_READY(acm))
  return -EINVAL;

 return -ENOIOCTLCMD;
}
