
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ipx_interfaces_head () ;
 scalar_t__ ipx_primary_net ;
 char ipxcfg_auto_select_primary ;

__attribute__((used)) static void ipxcfg_set_auto_select(char val)
{
 ipxcfg_auto_select_primary = val;
 if (val && !ipx_primary_net)
  ipx_primary_net = ipx_interfaces_head();
}
