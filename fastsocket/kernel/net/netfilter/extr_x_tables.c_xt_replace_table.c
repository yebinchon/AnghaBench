
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_table_info {unsigned int number; int initial_entries; } ;
struct xt_table {int af; int name; struct xt_table_info* private; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_2__ {int audit_context; } ;


 int AUDIT_NETFILTER_CFG ;
 int EAGAIN ;
 int GFP_KERNEL ;
 scalar_t__ audit_enabled ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*,int ,int ,unsigned int) ;
 struct audit_buffer* audit_log_start (int ,int ,int ) ;
 TYPE_1__* current ;
 int duprintf (char*,unsigned int,unsigned int) ;
 int local_bh_disable () ;
 int local_bh_enable () ;

struct xt_table_info *
xt_replace_table(struct xt_table *table,
       unsigned int num_counters,
       struct xt_table_info *newinfo,
       int *error)
{
 struct xt_table_info *private;


 local_bh_disable();
 private = table->private;


 if (num_counters != private->number) {
  duprintf("num_counters != table->private->number (%u/%u)\n",
    num_counters, private->number);
  local_bh_enable();
  *error = -EAGAIN;
  return ((void*)0);
 }

 table->private = newinfo;
 newinfo->initial_entries = private->initial_entries;







 local_bh_enable();
 return private;
}
