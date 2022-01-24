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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
#define  COMPOUND_LITERAL_EXPR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

rtx
FUNC5 (tree exp, rtx target, enum machine_mode tmode,
	       int modifier /* Actually enum_modifier.  */,
	       rtx *alt_rtl)
{
  switch (FUNC1 (exp))
    {
    case COMPOUND_LITERAL_EXPR:
      {
	/* Initialize the anonymous variable declared in the compound
	   literal, then return the variable.  */
	tree decl = FUNC0 (exp);
	FUNC2 (decl);
	return FUNC3 (decl, target, tmode, modifier, alt_rtl);
      }

    default:
      FUNC4 ();
    }
}