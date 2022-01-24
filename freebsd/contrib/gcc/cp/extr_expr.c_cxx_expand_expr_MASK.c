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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
#define  BASELINK 131 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  EMPTY_CLASS_EXPR 130 
 int EXPAND_NORMAL ; 
 int EXPAND_SUM ; 
#define  OFFSET_REF 129 
#define  PTRMEM_CST 128 
 int Pmode ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

rtx
FUNC8 (tree exp, rtx target, enum machine_mode tmode, int modifier,
		 rtx *alt_rtl)
{
  tree type = FUNC2 (exp);
  enum machine_mode mode = FUNC3 (type);
  enum tree_code code = FUNC1 (exp);

  /* No sense saving up arithmetic to be done
     if it's all in the wrong mode to form part of an address.
     And force_operand won't know whether to sign-extend or zero-extend.  */

  if (mode != Pmode && modifier == EXPAND_SUM)
    modifier = EXPAND_NORMAL;

  switch (code)
    {
    case PTRMEM_CST:
      return FUNC6 (FUNC5 (exp),
			  target, tmode, modifier);

    case OFFSET_REF:
      /* Offset refs should not make it through to here.  */
      FUNC7 ();

    case EMPTY_CLASS_EXPR:
      /* We don't need to generate any code for an empty class.  */
      return const0_rtx;

    case BASELINK:
      return FUNC6 (FUNC0 (exp), target, tmode,
			  modifier);

    default:
      return FUNC4 (exp, target, tmode, modifier, alt_rtl);
    }
}