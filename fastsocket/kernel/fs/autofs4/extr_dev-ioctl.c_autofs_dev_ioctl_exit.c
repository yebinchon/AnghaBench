
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _autofs_dev_ioctl_misc ;
 int misc_deregister (int *) ;

void autofs_dev_ioctl_exit(void)
{
 misc_deregister(&_autofs_dev_ioctl_misc);
 return;
}
