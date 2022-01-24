#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_1__* edge ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  TYPE_2__* basic_block ;
struct TYPE_13__ {int /*<<< orphan*/  succs; } ;
struct TYPE_12__ {int /*<<< orphan*/  flags; TYPE_2__* dest; TYPE_2__* src; } ;

/* Variables and functions */
 scalar_t__ COND_EXPR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EDGE_FALLTHRU ; 
 TYPE_1__* FUNC1 (TYPE_2__*,int) ; 
 scalar_t__ SWITCH_EXPR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static edge
FUNC8 (edge e, basic_block target)
{
  basic_block src = e->src;
  block_stmt_iterator b;
  tree stmt;

  /* We can replace or remove a complex jump only when we have exactly
     two edges.  */
  if (FUNC0 (src->succs) != 2
      /* Verify that all targets will be TARGET.  Specifically, the
	 edge that is not E must also go to TARGET.  */
      || FUNC1 (src, FUNC1 (src, 0) == e)->dest != target)
    return NULL;

  b = FUNC4 (src);
  if (FUNC3 (b))
    return NULL;
  stmt = FUNC6 (b);

  if (FUNC2 (stmt) == COND_EXPR
      || FUNC2 (stmt) == SWITCH_EXPR)
    {
      FUNC5 (&b, true);
      e = FUNC7 (e, target);
      e->flags = EDGE_FALLTHRU;
      return e;
    }

  return NULL;
}