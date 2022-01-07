
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDT_EFDR ;
 int WDT_EFER ;
 int io_lock ;
 int outb_p (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int w83627hf_select_wd_register () ;
 int w83627hf_unselect_wd_register () ;

__attribute__((used)) static void wdt_ctrl(int timeout)
{
 spin_lock(&io_lock);

 w83627hf_select_wd_register();

 outb_p(0xF6, WDT_EFER);
 outb_p(timeout, WDT_EFDR);

 w83627hf_unselect_wd_register();

 spin_unlock(&io_lock);
}
