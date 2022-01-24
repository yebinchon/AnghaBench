#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_1__* edge ;
typedef  TYPE_2__* basic_block ;
struct TYPE_18__ {scalar_t__ next_bb; int /*<<< orphan*/  count; int /*<<< orphan*/  frequency; int /*<<< orphan*/  flags; int /*<<< orphan*/  succs; } ;
struct TYPE_17__ {scalar_t__ dest; int /*<<< orphan*/  count; int /*<<< orphan*/  probability; } ;

/* Variables and functions */
 int /*<<< orphan*/  BB_RTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EDGE_FALLTHRU ; 
 TYPE_1__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* ENTRY_BLOCK_PTR ; 
 TYPE_2__* EXIT_BLOCK_PTR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_BR_PROB_BASE ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

__attribute__((used)) static basic_block
FUNC14 (void)
{
  basic_block init_block, first_block;
  edge e = NULL;
  int flags;

  /* Multiple entry points not supported yet.  */
  FUNC5 (FUNC0 (ENTRY_BLOCK_PTR->succs) == 1);
  FUNC8 (ENTRY_BLOCK_PTR);
  FUNC8 (EXIT_BLOCK_PTR);
  ENTRY_BLOCK_PTR->flags |= BB_RTL;
  EXIT_BLOCK_PTR->flags |= BB_RTL;

  e = FUNC1 (ENTRY_BLOCK_PTR, 0);

  /* When entry edge points to first basic block, we don't need jump,
     otherwise we have to jump into proper target.  */
  if (e && e->dest != ENTRY_BLOCK_PTR->next_bb)
    {
      tree label = FUNC12 (e->dest);

      FUNC4 (FUNC9 (label));
      flags = 0;
    }
  else
    flags = EDGE_FALLTHRU;

  init_block = FUNC3 (FUNC2 (FUNC6 ()),
				   FUNC7 (),
				   ENTRY_BLOCK_PTR);
  init_block->frequency = ENTRY_BLOCK_PTR->frequency;
  init_block->count = ENTRY_BLOCK_PTR->count;
  if (e)
    {
      first_block = e->dest;
      FUNC11 (e, init_block);
      e = FUNC10 (init_block, first_block, flags);
    }
  else
    e = FUNC10 (init_block, EXIT_BLOCK_PTR, EDGE_FALLTHRU);
  e->probability = REG_BR_PROB_BASE;
  e->count = ENTRY_BLOCK_PTR->count;

  FUNC13 (init_block);
  return init_block;
}