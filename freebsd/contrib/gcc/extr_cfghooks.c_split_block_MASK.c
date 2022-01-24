#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * edge ;
typedef  TYPE_1__* basic_block ;
struct TYPE_13__ {int /*<<< orphan*/  loop_depth; int /*<<< orphan*/  frequency; int /*<<< orphan*/  count; } ;
struct TYPE_12__ {TYPE_1__* (* split_block ) (TYPE_1__*,void*) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 int /*<<< orphan*/  EDGE_FALLTHRU ; 
 TYPE_11__* cfg_hooks ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC5 (TYPE_1__*,void*) ; 

edge
FUNC6 (basic_block bb, void *i)
{
  basic_block new_bb;

  if (!cfg_hooks->split_block)
    FUNC1 ("%s does not support split_block", cfg_hooks->name);

  new_bb = cfg_hooks->split_block (bb, i);
  if (!new_bb)
    return NULL;

  new_bb->count = bb->count;
  new_bb->frequency = bb->frequency;
  new_bb->loop_depth = bb->loop_depth;

  if (FUNC0 (CDI_DOMINATORS))
    {
      FUNC3 (CDI_DOMINATORS, bb, new_bb);
      FUNC4 (CDI_DOMINATORS, new_bb, bb);
    }

  return FUNC2 (bb, new_bb, EDGE_FALLTHRU);
}