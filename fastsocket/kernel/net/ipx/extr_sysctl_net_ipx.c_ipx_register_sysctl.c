
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipx_path ;
 int ipx_table ;
 int ipx_table_header ;
 int register_sysctl_paths (int ,int ) ;

void ipx_register_sysctl(void)
{
 ipx_table_header = register_sysctl_paths(ipx_path, ipx_table);
}
