
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table_header {int dummy; } ;


 int mq_sysctl_root ;
 struct ctl_table_header* register_sysctl_table (int ) ;

struct ctl_table_header *mq_register_sysctl_table(void)
{
 return register_sysctl_table(mq_sysctl_root);
}
