
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipx_table_header ;
 int unregister_sysctl_table (int ) ;

void ipx_unregister_sysctl(void)
{
 unregister_sysctl_table(ipx_table_header);
}
