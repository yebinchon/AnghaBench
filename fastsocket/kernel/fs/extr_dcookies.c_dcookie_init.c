
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct dcookie_struct {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int PAGE_SIZE ;
 int dcookie_cache ;
 struct list_head* dcookie_hashtable ;
 unsigned int hash_size ;
 struct list_head* kmalloc (int,int ) ;
 int kmem_cache_create (char*,int,int ,int ,int *) ;
 int kmem_cache_destroy (int ) ;

__attribute__((used)) static int dcookie_init(void)
{
 struct list_head * d;
 unsigned int i, hash_bits;
 int err = -ENOMEM;

 dcookie_cache = kmem_cache_create("dcookie_cache",
  sizeof(struct dcookie_struct),
  0, 0, ((void*)0));

 if (!dcookie_cache)
  goto out;

 dcookie_hashtable = kmalloc(PAGE_SIZE, GFP_KERNEL);
 if (!dcookie_hashtable)
  goto out_kmem;

 err = 0;






 hash_size = PAGE_SIZE / sizeof(struct list_head);
 hash_bits = 0;
 do {
  hash_bits++;
 } while ((hash_size >> hash_bits) != 0);
 hash_bits--;





 hash_size = 1UL << hash_bits;


 d = dcookie_hashtable;
 i = hash_size;
 do {
  INIT_LIST_HEAD(d);
  d++;
  i--;
 } while (i);

out:
 return err;
out_kmem:
 kmem_cache_destroy(dcookie_cache);
 goto out;
}
