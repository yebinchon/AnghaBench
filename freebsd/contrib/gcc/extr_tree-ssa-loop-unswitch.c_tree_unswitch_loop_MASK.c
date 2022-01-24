#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct loops {int dummy; } ;
struct loop {int /*<<< orphan*/ * inner; } ;
typedef  TYPE_1__* basic_block ;
struct TYPE_5__ {int /*<<< orphan*/  succs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct loop*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct loop* FUNC3 (struct loops*,struct loop*,int /*<<< orphan*/ ,TYPE_1__**,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct loop *
FUNC5 (struct loops *loops, struct loop *loop,
		    basic_block unswitch_on, tree cond)
{
  basic_block condition_bb;

  /* Some sanity checking.  */
  FUNC2 (FUNC1 (loop, unswitch_on));
  FUNC2 (FUNC0 (unswitch_on->succs) == 2);
  FUNC2 (loop->inner == NULL);

  return FUNC3 (loops, loop, FUNC4 (cond), 
		       &condition_bb, false);
}