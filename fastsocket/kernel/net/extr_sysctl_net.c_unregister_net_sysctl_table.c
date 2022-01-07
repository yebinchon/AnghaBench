
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table_header {int dummy; } ;


 int unregister_sysctl_table (struct ctl_table_header*) ;

void unregister_net_sysctl_table(struct ctl_table_header *header)
{
 unregister_sysctl_table(header);
}
