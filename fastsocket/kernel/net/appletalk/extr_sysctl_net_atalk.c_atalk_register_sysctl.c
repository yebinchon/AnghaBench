
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atalk_path ;
 int atalk_table ;
 int atalk_table_header ;
 int register_sysctl_paths (int ,int ) ;

void atalk_register_sysctl(void)
{
 atalk_table_header = register_sysctl_paths(atalk_path, atalk_table);
}
