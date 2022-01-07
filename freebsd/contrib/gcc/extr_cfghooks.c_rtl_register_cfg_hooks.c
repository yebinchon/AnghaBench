
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * cfg_hooks ;
 int rtl_cfg_hooks ;

void
rtl_register_cfg_hooks (void)
{
  cfg_hooks = &rtl_cfg_hooks;
}
