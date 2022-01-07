
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_bucket {int dummy; } ;
struct dma_debug_entry {int dummy; } ;


 struct dma_debug_entry* __hash_bucket_find (struct hash_bucket*,struct dma_debug_entry*,int ) ;
 int exact_match ;

__attribute__((used)) static struct dma_debug_entry *bucket_find_exact(struct hash_bucket *bucket,
       struct dma_debug_entry *ref)
{
 return __hash_bucket_find(bucket, ref, exact_match);
}
