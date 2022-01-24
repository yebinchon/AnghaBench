#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* basic_block ;
struct TYPE_10__ {int /*<<< orphan*/  (* delete_basic_block ) (TYPE_1__*) ;int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int /*<<< orphan*/  succs; int /*<<< orphan*/  preds; } ;

/* Variables and functions */
 size_t CDI_DOMINATORS ; 
 size_t CDI_POST_DOMINATORS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* cfg_hooks ; 
 int /*<<< orphan*/  FUNC3 (size_t,TYPE_1__*) ; 
 scalar_t__* dom_computed ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

void
FUNC8 (basic_block bb)
{
  if (!cfg_hooks->delete_basic_block)
    FUNC5 ("%s does not support delete_basic_block", cfg_hooks->name);

  cfg_hooks->delete_basic_block (bb);

  /* Remove the edges into and out of this block.  Note that there may
     indeed be edges in, if we are removing an unreachable loop.  */
  while (FUNC0 (bb->preds) != 0)
    FUNC6 (FUNC1 (bb, 0));
  while (FUNC0 (bb->succs) != 0)
    FUNC6 (FUNC2 (bb, 0));

  if (dom_computed[CDI_DOMINATORS])
    FUNC3 (CDI_DOMINATORS, bb);
  if (dom_computed[CDI_POST_DOMINATORS])
    FUNC3 (CDI_POST_DOMINATORS, bb);

  /* Remove the basic block from the array.  */
  FUNC4 (bb);
}