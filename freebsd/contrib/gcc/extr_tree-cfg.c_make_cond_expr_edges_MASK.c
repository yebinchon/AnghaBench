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
typedef  int tree ;
typedef  TYPE_1__* edge ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_3__ {void* goto_locus; } ;

/* Variables and functions */
 scalar_t__ COND_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  EDGE_FALSE_VALUE ; 
 int /*<<< orphan*/  EDGE_TRUE_VALUE ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (basic_block bb)
{
  tree entry = FUNC8 (bb);
  basic_block then_bb, else_bb;
  tree then_label, else_label;
  edge e;

  FUNC6 (entry);
  FUNC6 (FUNC5 (entry) == COND_EXPR);

  /* Entry basic blocks for each component.  */
  then_label = FUNC4 (FUNC1 (entry));
  else_label = FUNC4 (FUNC0 (entry));
  then_bb = FUNC7 (then_label);
  else_bb = FUNC7 (else_label);

  e = FUNC9 (bb, then_bb, EDGE_TRUE_VALUE);
#ifdef USE_MAPPED_LOCATION
  e->goto_locus = EXPR_LOCATION (COND_EXPR_THEN (entry));
#else
  e->goto_locus = FUNC3 (FUNC1 (entry));
#endif
  e = FUNC9 (bb, else_bb, EDGE_FALSE_VALUE);
  if (e)
    {
#ifdef USE_MAPPED_LOCATION
      e->goto_locus = EXPR_LOCATION (COND_EXPR_ELSE (entry));
#else
      e->goto_locus = FUNC3 (FUNC0 (entry));
#endif
    }
}