#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  TYPE_2__* basic_block ;
struct TYPE_17__ {int flags; } ;
struct TYPE_16__ {TYPE_1__* loop_father; } ;
struct TYPE_15__ {TYPE_2__* latch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int EDGE_ABNORMAL ; 
 TYPE_2__* EXIT_BLOCK_PTR ; 
 scalar_t__ LABEL_EXPR ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ current_loops ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 () ; 
 scalar_t__ FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 TYPE_2__* FUNC17 (TYPE_2__*) ; 
 TYPE_6__* FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 scalar_t__ FUNC20 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC21 (basic_block a, basic_block b)
{
  tree stmt;
  block_stmt_iterator bsi;
  tree phi;

  if (!FUNC19 (a))
    return false;

  if (FUNC18 (a)->flags & EDGE_ABNORMAL)
    return false;

  if (FUNC17 (a) != b)
    return false;

  if (!FUNC16 (b))
    return false;

  if (b == EXIT_BLOCK_PTR)
    return false;

  /* If A ends by a statement causing exceptions or something similar, we
     cannot merge the blocks.  */
  stmt = FUNC12 (a);
  if (stmt && FUNC20 (stmt))
    return false;

  /* Do not allow a block with only a non-local label to be merged.  */
  if (stmt && FUNC6 (stmt) == LABEL_EXPR
      && FUNC1 (FUNC2 (stmt)))
    return false;

  /* It must be possible to eliminate all phi nodes in B.  If ssa form
     is not up-to-date, we cannot eliminate any phis.  */
  phi = FUNC15 (b);
  if (phi)
    {
      if (FUNC14 ())
	return false;

      for (; phi; phi = FUNC4 (phi))
	if (!FUNC11 (FUNC5 (phi))
	    && !FUNC13 (FUNC5 (phi), FUNC3 (phi, 0)))
	  return false;
    }

  /* Do not remove user labels.  */
  for (bsi = FUNC9 (b); !FUNC7 (bsi); FUNC8 (&bsi))
    {
      stmt = FUNC10 (bsi);
      if (FUNC6 (stmt) != LABEL_EXPR)
	break;
      if (!FUNC0 (FUNC2 (stmt)))
	return false;
    }

  /* Protect the loop latches.  */
  if (current_loops
      && b->loop_father->latch == b)
    return false;

  return true;
}