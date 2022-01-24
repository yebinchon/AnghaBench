#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  EXPAND_NORMAL ; 
 int LAST_VIRTUAL_REGISTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  prepare_decl_rtl ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned
FUNC11 (tree expr)
{
  rtx seq, rslt;
  tree type = FUNC1 (expr);
  unsigned cost;
  /* Avoid using hard regs in ways which may be unsupported.  */
  int regno = LAST_VIRTUAL_REGISTER + 1;

  FUNC10 (&expr, prepare_decl_rtl, &regno, NULL);
  FUNC9 ();
  rslt = FUNC6 (expr, NULL_RTX, FUNC2 (type), EXPAND_NORMAL);
  seq = FUNC7 ();
  FUNC5 ();

  cost = FUNC8 (seq);
  if (FUNC0 (rslt))
    cost += FUNC4 (FUNC3 (rslt, 0), FUNC2 (type));

  return cost;
}