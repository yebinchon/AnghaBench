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
typedef  int /*<<< orphan*/  tree ;
struct loop {scalar_t__ latch; } ;
typedef  TYPE_1__* edge ;
typedef  int /*<<< orphan*/ * basic_block ;
struct TYPE_3__ {scalar_t__ dest; } ;

/* Variables and functions */
 scalar_t__ COND_EXPR ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct loop*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

basic_block
FUNC6 (struct loop *loop)
{
  tree last;
  basic_block bb;
  edge exit;

  if (!FUNC5 (loop->latch))
    return NULL;

  bb = FUNC4 (loop->latch);
  last = FUNC3 (bb);
  if (FUNC1 (last) != COND_EXPR)
    return NULL;

  exit = FUNC0 (bb, 0);
  if (exit->dest == loop->latch)
    exit = FUNC0 (bb, 1);

  if (FUNC2 (loop, exit->dest))
    return NULL;

  return bb;
}