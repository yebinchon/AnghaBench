
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUTOFS_ERROR (char*) ;
 int _autofs_dev_ioctl_misc ;
 int misc_register (int *) ;

int autofs_dev_ioctl_init(void)
{
 int r;

 r = misc_register(&_autofs_dev_ioctl_misc);
 if (r) {
  AUTOFS_ERROR("misc_register failed for control device");
  return r;
 }

 return 0;
}
