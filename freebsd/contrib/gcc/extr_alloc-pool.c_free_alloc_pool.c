
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct alloc_pool_descriptor {int current; } ;
typedef TYPE_1__* alloc_pool_list ;
typedef TYPE_1__* alloc_pool ;
struct TYPE_7__ {scalar_t__ block_size; struct TYPE_7__* next; struct TYPE_7__* block_list; int name; } ;


 struct alloc_pool_descriptor* alloc_pool_descriptor (int ) ;
 int free (TYPE_1__*) ;
 int gcc_assert (TYPE_1__*) ;
 int memset (TYPE_1__*,int,int) ;

void
free_alloc_pool (alloc_pool pool)
{
  alloc_pool_list block, next_block;




  gcc_assert (pool);


  for (block = pool->block_list; block != ((void*)0); block = next_block)
    {
      next_block = block->next;
      free (block);



    }




  free (pool);
}
