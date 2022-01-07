
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb_cache_entry {int e_block_list; } ;


 int list_empty (int *) ;

__attribute__((used)) static inline int
__mb_cache_entry_is_hashed(struct mb_cache_entry *ce)
{
 return !list_empty(&ce->e_block_list);
}
