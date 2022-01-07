
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_print (char*) ;
 scalar_t__ misc_deregister (int *) ;
 int plock_dev_misc ;

void dlm_plock_exit(void)
{
 if (misc_deregister(&plock_dev_misc) < 0)
  log_print("dlm_plock_exit: misc_deregister failed");
}
