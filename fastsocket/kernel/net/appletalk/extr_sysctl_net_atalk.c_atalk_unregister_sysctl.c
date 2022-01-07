
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atalk_table_header ;
 int unregister_sysctl_table (int ) ;

void atalk_unregister_sysctl(void)
{
 unregister_sysctl_table(atalk_table_header);
}
