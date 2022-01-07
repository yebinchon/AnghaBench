
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_debug_entry {int list; } ;


 int list_del (int *) ;

__attribute__((used)) static void hash_bucket_del(struct dma_debug_entry *entry)
{
 list_del(&entry->list);
}
