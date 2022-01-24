#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct loop {int dummy; } ;
typedef  TYPE_1__* edge ;
typedef  TYPE_2__* basic_block ;
struct TYPE_12__ {TYPE_2__* latch; } ;
struct TYPE_11__ {TYPE_3__* loop_father; } ;
struct TYPE_10__ {TYPE_2__* dest; TYPE_2__* src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,struct loop*) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct loop* FUNC2 (TYPE_3__*,TYPE_3__*) ; 

basic_block
FUNC3 (edge e, tree stmt)
{
  basic_block src, dest, new_bb;
  struct loop *loop_c;

  src = e->src;
  dest = e->dest;

  loop_c = FUNC2 (src->loop_father, dest->loop_father);

  new_bb = FUNC1 (e, stmt);

  if (!new_bb)
    return NULL;

  FUNC0 (new_bb, loop_c);
  if (dest->loop_father->latch == src)
    dest->loop_father->latch = new_bb;

  return new_bb;
}