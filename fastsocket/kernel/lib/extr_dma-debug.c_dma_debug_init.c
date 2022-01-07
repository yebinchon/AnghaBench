
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int lock; int list; } ;


 int HASH_SIZE ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ dma_debug_fs_init () ;
 TYPE_1__* dma_entry_hash ;
 int global_disable ;
 int nr_total_entries ;
 int num_free_entries ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 scalar_t__ prealloc_memory (scalar_t__) ;
 scalar_t__ req_entries ;
 int spin_lock_init (int *) ;

void dma_debug_init(u32 num_entries)
{
 int i;

 if (global_disable)
  return;

 for (i = 0; i < HASH_SIZE; ++i) {
  INIT_LIST_HEAD(&dma_entry_hash[i].list);
  spin_lock_init(&dma_entry_hash[i].lock);
 }

 if (dma_debug_fs_init() != 0) {
  pr_err("DMA-API: error creating debugfs entries - disabling\n");
  global_disable = 1;

  return;
 }

 if (req_entries)
  num_entries = req_entries;

 if (prealloc_memory(num_entries) != 0) {
  pr_err("DMA-API: debugging out of memory error - disabled\n");
  global_disable = 1;

  return;
 }

 nr_total_entries = num_free_entries;

 pr_info("DMA-API: debugging enabled by kernel config\n");
}
