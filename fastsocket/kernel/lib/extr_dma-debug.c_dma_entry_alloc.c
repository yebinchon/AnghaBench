
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int skip; int entries; int max_entries; } ;
struct dma_debug_entry {TYPE_1__ stacktrace; int st_entries; } ;


 int DMA_DEBUG_STACKTRACE_ENTRIES ;
 struct dma_debug_entry* __dma_entry_alloc () ;
 int free_entries ;
 int free_entries_lock ;
 int global_disable ;
 scalar_t__ list_empty (int *) ;
 int pr_err (char*) ;
 int save_stack_trace (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct dma_debug_entry *dma_entry_alloc(void)
{
 struct dma_debug_entry *entry = ((void*)0);
 unsigned long flags;

 spin_lock_irqsave(&free_entries_lock, flags);

 if (list_empty(&free_entries)) {
  pr_err("DMA-API: debugging out of memory - disabling\n");
  global_disable = 1;
  goto out;
 }

 entry = __dma_entry_alloc();
out:
 spin_unlock_irqrestore(&free_entries_lock, flags);

 return entry;
}
