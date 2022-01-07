
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dma_debug_entry {int list; } ;


 int GFP_KERNEL ;
 int LIST_HEAD (int ) ;
 struct dma_debug_entry* __dma_entry_alloc () ;
 int free_entries ;
 int free_entries_lock ;
 int kfree (struct dma_debug_entry*) ;
 struct dma_debug_entry* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int list_splice (int *,int *) ;
 scalar_t__ nr_total_entries ;
 int num_free_entries ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tmp ;

int dma_debug_resize_entries(u32 num_entries)
{
 int i, delta, ret = 0;
 unsigned long flags;
 struct dma_debug_entry *entry;
 LIST_HEAD(tmp);

 spin_lock_irqsave(&free_entries_lock, flags);

 if (nr_total_entries < num_entries) {
  delta = num_entries - nr_total_entries;

  spin_unlock_irqrestore(&free_entries_lock, flags);

  for (i = 0; i < delta; i++) {
   entry = kzalloc(sizeof(*entry), GFP_KERNEL);
   if (!entry)
    break;

   list_add_tail(&entry->list, &tmp);
  }

  spin_lock_irqsave(&free_entries_lock, flags);

  list_splice(&tmp, &free_entries);
  nr_total_entries += i;
  num_free_entries += i;
 } else {
  delta = nr_total_entries - num_entries;

  for (i = 0; i < delta && !list_empty(&free_entries); i++) {
   entry = __dma_entry_alloc();
   kfree(entry);
  }

  nr_total_entries -= i;
 }

 if (nr_total_entries != num_entries)
  ret = 1;

 spin_unlock_irqrestore(&free_entries_lock, flags);

 return ret;
}
