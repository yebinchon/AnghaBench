#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * tree ;
struct leh_state {TYPE_1__* tf; } ;
struct TYPE_2__ {int /*<<< orphan*/ * try_finally_expr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static tree
FUNC2 (tree t, struct leh_state *outer_state)
{
  tree region = NULL;

  t = FUNC1 (t);

  if (outer_state->tf)
    region = outer_state->tf->try_finally_expr;
  FUNC0 (t, region);

  return t;
}