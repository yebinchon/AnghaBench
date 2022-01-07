
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int read_proc; void* data; } ;
struct irq_desc {scalar_t__ dir; int * chip; } ;


 int MAX_NAMELEN ;
 struct proc_dir_entry* create_proc_entry (char*,int,scalar_t__) ;
 int irq_affinity_hint_proc_fops ;
 int irq_affinity_list_proc_fops ;
 int irq_affinity_proc_fops ;
 int irq_node_proc_fops ;
 int irq_spurious_read ;
 int memset (char*,int ,int) ;
 int no_irq_chip ;
 int proc_create_data (char*,int,scalar_t__,int *,void*) ;
 scalar_t__ proc_mkdir (char*,int ) ;
 int root_irq_dir ;
 int sprintf (char*,char*,unsigned int) ;

void register_irq_proc(unsigned int irq, struct irq_desc *desc)
{
 char name [MAX_NAMELEN];
 struct proc_dir_entry *entry;

 if (!root_irq_dir || (desc->chip == &no_irq_chip) || desc->dir)
  return;

 memset(name, 0, MAX_NAMELEN);
 sprintf(name, "%d", irq);


 desc->dir = proc_mkdir(name, root_irq_dir);
 entry = create_proc_entry("spurious", 0444, desc->dir);
 if (entry) {
  entry->data = (void *)(long)irq;
  entry->read_proc = irq_spurious_read;
 }
}
