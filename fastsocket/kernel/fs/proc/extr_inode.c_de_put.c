
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int count; int name; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_read (int *) ;
 int free_proc_entry (struct proc_dir_entry*) ;
 int printk (char*,int ) ;

void de_put(struct proc_dir_entry *de)
{
 if (!atomic_read(&de->count)) {
  printk("de_put: entry %s already free!\n", de->name);
  return;
 }

 if (atomic_dec_and_test(&de->count))
  free_proc_entry(de);
}
