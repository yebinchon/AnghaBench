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
struct mem_ref_group {int dummy; } ;
struct loop {unsigned int num_nodes; } ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  TYPE_1__* basic_block ;
struct TYPE_5__ {struct loop* loop_father; } ;

/* Variables and functions */
 scalar_t__ MODIFY_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC8 (struct loop*,struct mem_ref_group**,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_1__** FUNC9 (struct loop*) ; 

__attribute__((used)) static struct mem_ref_group *
FUNC10 (struct loop *loop)
{
  basic_block *body = FUNC9 (loop);
  basic_block bb;
  unsigned i;
  block_stmt_iterator bsi;
  tree stmt, lhs, rhs;
  struct mem_ref_group *refs = NULL;

  /* Scan the loop body in order, so that the former references precede the
     later ones.  */
  for (i = 0; i < loop->num_nodes; i++)
    {
      bb = body[i];
      if (bb->loop_father != loop)
	continue;

      for (bsi = FUNC5 (bb); !FUNC3 (bsi); FUNC4 (&bsi))
	{
	  stmt = FUNC6 (bsi);
	  if (FUNC1 (stmt) != MODIFY_EXPR)
	    continue;

	  lhs = FUNC2 (stmt, 0);
	  rhs = FUNC2 (stmt, 1);

	  if (FUNC0 (rhs))
	    FUNC8 (loop, &refs, rhs, false, stmt);
	  if (FUNC0 (lhs))
	    FUNC8 (loop, &refs, lhs, true, stmt);
	}
    }
  FUNC7 (body);

  return refs;
}