
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * ipx_interfaces_head () ;
 int * ipx_primary_net ;
 scalar_t__ ipxcfg_auto_select_primary ;

__attribute__((used)) static void ipxitf_clear_primary_net(void)
{
 ipx_primary_net = ((void*)0);
 if (ipxcfg_auto_select_primary)
  ipx_primary_net = ipx_interfaces_head();
}
