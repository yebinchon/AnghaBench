
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table {scalar_t__ proc_handler; scalar_t__ strategy; scalar_t__ procname; scalar_t__ ctl_name; } ;


 scalar_t__ proc_dointvec ;
 scalar_t__ sysctl_data ;

__attribute__((used)) static void sysctl_repair_table(struct ctl_table *table)
{





 if (table->ctl_name && table->procname &&
  (table->proc_handler == proc_dointvec) &&
  (!table->strategy)) {
  table->strategy = sysctl_data;
 }
}
