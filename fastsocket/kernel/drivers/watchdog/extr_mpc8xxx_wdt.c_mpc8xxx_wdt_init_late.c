
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int WATCHDOG_MINOR ;
 int misc_register (int *) ;
 int mpc8xxx_wdt_miscdev ;
 int pr_err (char*,int ,int) ;
 int wd_base ;

__attribute__((used)) static int mpc8xxx_wdt_init_late(void)
{
 int ret;

 if (!wd_base)
  return -ENODEV;

 ret = misc_register(&mpc8xxx_wdt_miscdev);
 if (ret) {
  pr_err("cannot register miscdev on minor=%d (err=%d)\n",
   WATCHDOG_MINOR, ret);
  return ret;
 }
 return 0;
}
