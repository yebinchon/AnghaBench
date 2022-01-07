
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int * proc_fops; } ;


 struct proc_dir_entry* create_proc_entry (char*,int ,int *) ;
 int cvm_oct_stats_operations ;

void cvm_oct_proc_initialize(void)
{
 struct proc_dir_entry *entry =
     create_proc_entry("octeon_ethernet_stats", 0, ((void*)0));
 if (entry)
  entry->proc_fops = &cvm_oct_stats_operations;
}
