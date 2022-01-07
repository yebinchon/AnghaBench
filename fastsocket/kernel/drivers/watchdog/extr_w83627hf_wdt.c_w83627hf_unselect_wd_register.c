
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDT_EFER ;
 int outb_p (int,int ) ;

__attribute__((used)) static void w83627hf_unselect_wd_register(void)
{
 outb_p(0xAA, WDT_EFER);
}
