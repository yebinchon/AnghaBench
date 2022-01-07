
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct kcore_list {unsigned long addr; unsigned long size; int list; int type; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int KCORE_RAM ;
 unsigned long PAGE_SHIFT ;
 unsigned long ULONG_MAX ;
 unsigned long VMALLOC_START ;
 scalar_t__ __va (unsigned long) ;
 int get_sparsemem_vmemmap_info (struct kcore_list*,struct list_head*) ;
 int kfree (struct kcore_list*) ;
 struct kcore_list* kmalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int list_del (int *) ;

__attribute__((used)) static int
kclist_add_private(unsigned long pfn, unsigned long nr_pages, void *arg)
{
 struct list_head *head = (struct list_head *)arg;
 struct kcore_list *ent;

 ent = kmalloc(sizeof(*ent), GFP_KERNEL);
 if (!ent)
  return -ENOMEM;
 ent->addr = (unsigned long)__va((pfn << PAGE_SHIFT));
 ent->size = nr_pages << PAGE_SHIFT;


 if (ent->addr < (unsigned long) __va(0))
  goto free_out;


 if (ULONG_MAX - ent->addr < ent->size)
  ent->size = ULONG_MAX - ent->addr;


 if (VMALLOC_START > (unsigned long)__va(0)) {
  if (ent->addr > VMALLOC_START)
   goto free_out;
  if (VMALLOC_START - ent->addr < ent->size)
   ent->size = VMALLOC_START - ent->addr;
 }

 ent->type = KCORE_RAM;
 list_add_tail(&ent->list, head);

 if (!get_sparsemem_vmemmap_info(ent, head)) {
  list_del(&ent->list);
  goto free_out;
 }

 return 0;
free_out:
 kfree(ent);
 return 1;
}
