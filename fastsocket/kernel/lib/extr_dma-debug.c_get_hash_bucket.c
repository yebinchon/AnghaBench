
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_bucket {int lock; } ;
struct dma_debug_entry {int dummy; } ;


 struct hash_bucket* dma_entry_hash ;
 int hash_fn (struct dma_debug_entry*) ;
 int spin_lock_irqsave (int *,unsigned long) ;

__attribute__((used)) static struct hash_bucket *get_hash_bucket(struct dma_debug_entry *entry,
        unsigned long *flags)
{
 int idx = hash_fn(entry);
 unsigned long __flags;

 spin_lock_irqsave(&dma_entry_hash[idx].lock, __flags);
 *flags = __flags;
 return &dma_entry_hash[idx];
}
