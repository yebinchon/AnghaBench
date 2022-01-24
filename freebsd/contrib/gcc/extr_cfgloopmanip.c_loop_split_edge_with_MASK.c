#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct loop {int dummy; } ;
typedef  scalar_t__ rtx ;
typedef  TYPE_1__* edge ;
typedef  TYPE_2__* basic_block ;
struct TYPE_13__ {TYPE_2__* latch; } ;
struct TYPE_12__ {TYPE_7__* loop_father; int /*<<< orphan*/  flags; } ;
struct TYPE_11__ {TYPE_2__* dest; TYPE_2__* src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  BB_SUPERBLOCK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct loop*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct loop* FUNC3 (TYPE_7__*,TYPE_7__*) ; 
 TYPE_2__* FUNC4 (TYPE_1__*) ; 

basic_block
FUNC5 (edge e, rtx insns)
{
  basic_block src, dest, new_bb;
  struct loop *loop_c;

  src = e->src;
  dest = e->dest;

  loop_c = FUNC3 (src->loop_father, dest->loop_father);

  /* Create basic block for it.  */

  new_bb = FUNC4 (e);
  FUNC1 (new_bb, loop_c);
  new_bb->flags |= (insns ? BB_SUPERBLOCK : 0);

  if (insns)
    FUNC2 (insns, FUNC0 (new_bb));

  if (dest->loop_father->latch == src)
    dest->loop_father->latch = new_bb;

  return new_bb;
}