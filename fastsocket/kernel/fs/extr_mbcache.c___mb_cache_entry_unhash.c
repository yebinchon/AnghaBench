
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mb_cache_entry {TYPE_1__* e_indexes; int e_cache; int e_block_list; } ;
struct TYPE_2__ {int o_list; } ;


 scalar_t__ __mb_cache_entry_is_hashed (struct mb_cache_entry*) ;
 int list_del (int *) ;
 int list_del_init (int *) ;
 int mb_cache_indexes (int ) ;

__attribute__((used)) static void
__mb_cache_entry_unhash(struct mb_cache_entry *ce)
{
 int n;

 if (__mb_cache_entry_is_hashed(ce)) {
  list_del_init(&ce->e_block_list);
  for (n=0; n<mb_cache_indexes(ce->e_cache); n++)
   list_del(&ce->e_indexes[n].o_list);
 }
}
