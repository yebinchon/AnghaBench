#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* constraint_t ;
typedef  int /*<<< orphan*/  constraint_graph_t ;
typedef  int /*<<< orphan*/  bitmap ;
struct TYPE_12__ {int /*<<< orphan*/  solution; int /*<<< orphan*/  is_special_var; } ;
struct TYPE_10__ {scalar_t__ type; unsigned int var; int /*<<< orphan*/  offset; } ;
struct TYPE_9__ {scalar_t__ type; unsigned int var; } ;
struct TYPE_11__ {TYPE_2__ rhs; TYPE_1__ lhs; } ;

/* Variables and functions */
 scalar_t__ ADDRESSOF ; 
 scalar_t__ DEREF ; 
 scalar_t__ SCALAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  changed ; 
 int /*<<< orphan*/  changed_count ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 TYPE_4__* FUNC7 (unsigned int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9 (constraint_graph_t graph, constraint_t c, bitmap delta)
{
  if (c->lhs.type == DEREF)
    {
      if (c->rhs.type == ADDRESSOF)
	{
	  /* *x = &y */
	  FUNC2 (graph, c, delta);
	}
      else
	{
	  /* *x = y */
	  FUNC3 (c, delta);
	}
    }
  else if (c->rhs.type == DEREF)
    {
      /* x = *y */
      if (!(FUNC7 (c->lhs.var)->is_special_var))
	FUNC4 (graph, c, delta);
    }
  else
    {
      bitmap tmp;
      bitmap solution;
      bool flag = false;
      unsigned int t;

      FUNC6 (c->rhs.type == SCALAR && c->lhs.type == SCALAR);
      t = FUNC5 (c->rhs.var);
      solution = FUNC7 (t)->solution;
      t = FUNC5 (c->lhs.var);
      tmp = FUNC7 (t)->solution;

      flag = FUNC8 (tmp, solution, c->rhs.offset);

      if (flag)
	{
	  FUNC7 (t)->solution = tmp;
	  if (!FUNC1 (changed, t))
	    {
	      FUNC0 (changed, t);
	      changed_count++;
	    }
	}
    }
}