#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct loops {int /*<<< orphan*/ ** parray; } ;
struct loop {unsigned int num_nodes; size_t num; int /*<<< orphan*/  outer; int /*<<< orphan*/  inner; } ;
typedef  TYPE_1__* basic_block ;
struct TYPE_3__ {int /*<<< orphan*/  loop_father; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct loop*) ; 
 int /*<<< orphan*/  FUNC1 (struct loop*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__** FUNC3 (struct loop*) ; 

__attribute__((used)) static void
FUNC4 (struct loops *loops, struct loop *loop)
{
  basic_block *bbs;
  unsigned i;

  FUNC2 (!loop->inner);

  /* Move blocks up one level (they should be removed as soon as possible).  */
  bbs = FUNC3 (loop);
  for (i = 0; i < loop->num_nodes; i++)
    bbs[i]->loop_father = loop->outer;

  /* Remove the loop from structure.  */
  FUNC1 (loop);

  /* Remove loop from loops array.  */
  loops->parray[loop->num] = NULL;

  /* Free loop data.  */
  FUNC0 (loop);
}