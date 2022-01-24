#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  edge_iterator ;
typedef  TYPE_1__* edge ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  TYPE_2__* basic_block ;
struct TYPE_9__ {int /*<<< orphan*/  succs; } ;
struct TYPE_8__ {TYPE_2__* dest; } ;

/* Variables and functions */
 scalar_t__ COND_EXPR ; 
 scalar_t__ GOTO_EXPR ; 
 scalar_t__ SWITCH_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC9 (basic_block bb, basic_block dest_bb)
{
  block_stmt_iterator bsi;
  edge e;
  edge_iterator ei;

  bsi = FUNC2 (bb);

  /* If the duplicate ends with a control statement, then remove it.

     Note that if we are duplicating the template block rather than the
     original basic block, then the duplicate might not have any real
     statements in it.  */
  if (!FUNC1 (bsi)
      && FUNC4 (bsi)
      && (FUNC0 (FUNC4 (bsi)) == COND_EXPR
	  || FUNC0 (FUNC4 (bsi)) == GOTO_EXPR
	  || FUNC0 (FUNC4 (bsi)) == SWITCH_EXPR))
    FUNC3 (&bsi, true);

  for (ei = FUNC7 (bb->succs); (e = FUNC6 (ei)); )
    {
      if (e->dest != dest_bb)
	FUNC8 (e);
      else
	FUNC5 (&ei);
    }
}