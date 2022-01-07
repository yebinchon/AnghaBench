
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int owner; } ;


 int THIS_MODULE ;
 int alloc_chrdev_region (int *,int ,int,char*) ;
 int cdev_add (TYPE_1__*,int ,int) ;
 int cdev_init (TYPE_1__*,int *) ;
 int edbg (char*,int) ;
 TYPE_1__ sep_cdev ;
 int sep_devno ;
 int sep_file_operations ;
 int unregister_chrdev_region (int ,int) ;

__attribute__((used)) static int sep_register_driver_to_fs(void)
{
 int ret_val = alloc_chrdev_region(&sep_devno, 0, 1, "sep_sec_driver");
 if (ret_val) {
  edbg("sep: major number allocation failed, retval is %d\n",
        ret_val);
  return ret_val;
 }

 cdev_init(&sep_cdev, &sep_file_operations);
 sep_cdev.owner = THIS_MODULE;


 ret_val = cdev_add(&sep_cdev, sep_devno, 1);
 if (ret_val) {
  edbg("sep_driver:cdev_add failed, retval is %d\n", ret_val);

  unregister_chrdev_region(sep_devno, 1);
 }
 return ret_val;
}
