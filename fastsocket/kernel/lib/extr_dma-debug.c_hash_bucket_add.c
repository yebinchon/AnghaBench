
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_bucket {int list; } ;
struct dma_debug_entry {int list; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static void hash_bucket_add(struct hash_bucket *bucket,
       struct dma_debug_entry *entry)
{
 list_add_tail(&entry->list, &bucket->list);
}
