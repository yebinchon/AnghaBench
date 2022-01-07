
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_table_info {scalar_t__ number; scalar_t__ initial_entries; int size; void** entries; } ;
struct xt_table {struct module* me; } ;
struct module {int dummy; } ;


 int IPT_ENTRY_ITERATE (void*,int ,int ,int *) ;
 int cleanup_entry ;
 int module_put (struct module*) ;
 size_t raw_smp_processor_id () ;
 int xt_free_table_info (struct xt_table_info*) ;
 struct xt_table_info* xt_unregister_table (struct xt_table*) ;

void ipt_unregister_table(struct xt_table *table)
{
 struct xt_table_info *private;
 void *loc_cpu_entry;
 struct module *table_owner = table->me;

 private = xt_unregister_table(table);


 loc_cpu_entry = private->entries[raw_smp_processor_id()];
 IPT_ENTRY_ITERATE(loc_cpu_entry, private->size, cleanup_entry, ((void*)0));
 if (private->number > private->initial_entries)
  module_put(table_owner);
 xt_free_table_info(private);
}
