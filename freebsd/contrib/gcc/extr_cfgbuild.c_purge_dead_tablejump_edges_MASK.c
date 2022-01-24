#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * rtx ;
typedef  int /*<<< orphan*/  rtvec ;
typedef  int /*<<< orphan*/  edge_iterator ;
typedef  TYPE_1__* edge ;
typedef  TYPE_2__* basic_block ;
struct TYPE_8__ {int /*<<< orphan*/  succs; } ;
struct TYPE_7__ {int flags; int /*<<< orphan*/  dest; } ;

/* Variables and functions */
 scalar_t__ ADDR_VEC ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int BLOCK_USED_BY_TABLEJUMP ; 
 int EDGE_ABNORMAL ; 
 int EDGE_EH ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ IF_THEN_ELSE ; 
 scalar_t__ LABEL_REF ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ pc_rtx ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC17 (basic_block bb, rtx table)
{
  rtx insn = FUNC0 (bb), tmp;
  rtvec vec;
  int j;
  edge_iterator ei;
  edge e;

  if (FUNC2 (FUNC4 (table)) == ADDR_VEC)
    vec = FUNC10 (FUNC4 (table), 0);
  else
    vec = FUNC10 (FUNC4 (table), 1);

  for (j = FUNC3 (vec) - 1; j >= 0; --j)
    FUNC14 (FUNC9 (FUNC5 (vec, j), 0));

  /* Some targets (eg, ARM) emit a conditional jump that also
     contains the out-of-range target.  Scan for these and
     add an edge if necessary.  */
  if ((tmp = FUNC16 (insn)) != NULL
       && FUNC6 (tmp) == pc_rtx
       && FUNC2 (FUNC7 (tmp)) == IF_THEN_ELSE
       && FUNC2 (FUNC9 (FUNC7 (tmp), 2)) == LABEL_REF)
    FUNC14 (FUNC9 (FUNC9 (FUNC7 (tmp), 2), 0));

  for (ei = FUNC13 (bb->succs); (e = FUNC12 (ei)); )
    {
      if (FUNC1 (e->dest) & BLOCK_USED_BY_TABLEJUMP)
	FUNC8 (e->dest, FUNC1 (e->dest)
			    & ~(size_t) BLOCK_USED_BY_TABLEJUMP);
      else if (!(e->flags & (EDGE_ABNORMAL | EDGE_EH)))
	{
	  FUNC15 (e);
	  continue;
	}
      FUNC11 (&ei);
    }
}