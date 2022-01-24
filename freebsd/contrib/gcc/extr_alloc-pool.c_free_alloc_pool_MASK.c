#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct alloc_pool_descriptor {int /*<<< orphan*/  current; } ;
typedef  TYPE_1__* alloc_pool_list ;
typedef  TYPE_1__* alloc_pool ;
struct TYPE_7__ {scalar_t__ block_size; struct TYPE_7__* next; struct TYPE_7__* block_list; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct alloc_pool_descriptor* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 

void
FUNC4 (alloc_pool pool)
{
  alloc_pool_list block, next_block;
#ifdef GATHER_STATISTICS
  struct alloc_pool_descriptor *desc = alloc_pool_descriptor (pool->name);
#endif

  FUNC2 (pool);

  /* Free each block allocated to the pool.  */
  for (block = pool->block_list; block != NULL; block = next_block)
    {
      next_block = block->next;
      FUNC1 (block);
#ifdef GATHER_STATISTICS
      desc->current -= pool->block_size;
#endif
    }
#ifdef ENABLE_CHECKING
  memset (pool, 0xaf, sizeof (*pool));
#endif
  /* Lastly, free the pool.  */
  FUNC1 (pool);
}