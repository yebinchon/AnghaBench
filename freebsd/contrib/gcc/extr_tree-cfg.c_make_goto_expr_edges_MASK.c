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
typedef  TYPE_1__* edge ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_3__ {int /*<<< orphan*/  goto_locus; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDGE_FALLTHRU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (basic_block bb)
{
  block_stmt_iterator last = FUNC3 (bb);
  tree goto_t = FUNC5 (last);

  /* A simple GOTO creates normal edges.  */
  if (FUNC9 (goto_t))
    {
      tree dest = FUNC2 (goto_t);
      edge e = FUNC8 (bb, FUNC6 (dest), EDGE_FALLTHRU);
#ifdef USE_MAPPED_LOCATION
      e->goto_locus = EXPR_LOCATION (goto_t);
#else
      e->goto_locus = FUNC1 (goto_t);
#endif
      FUNC4 (&last, true);
      return;
    }

  /* A computed GOTO creates abnormal edges.  */
  FUNC7 (bb, false);
}