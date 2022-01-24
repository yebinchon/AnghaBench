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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONST_INT ; 
 int /*<<< orphan*/  CONST_VECTOR ; 
 int /*<<< orphan*/  DImode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEM ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MODE_VECTOR_INT ; 
 int /*<<< orphan*/  RTX_AUTOINC ; 
 int /*<<< orphan*/  V2SFmode ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char) ; 
 int FUNC10 (int,char) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reload_in_progress ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC14 (rtx value, char c)
{
  switch (c)
    {
    case 'Q':
      /* Non-volatile memory for FP_REG loads/stores.  */
      return FUNC11(value, VOIDmode) && !FUNC6 (value);

    case 'R':
      /* 1..4 for shladd arguments.  */
      return (FUNC1 (value) == CONST_INT
	      && FUNC5 (value) >= 1 && FUNC5 (value) <= 4);

    case 'S':
      /* Non-post-inc memory for asms and other unsavory creatures.  */
      return (FUNC1 (value) == MEM
	      && FUNC4 (FUNC1 (FUNC7 (value, 0))) != RTX_AUTOINC
	      && (reload_in_progress || FUNC11 (value, VOIDmode)));

    case 'T':
      /* Symbol ref to small-address-area.  */
      return FUNC13 (value, VOIDmode);

    case 'U':
      /* Vector zero.  */
      return value == FUNC0 (FUNC2 (value));

    case 'W':
      /* An integer vector, such that conversion to an integer yields a
	 value appropriate for an integer 'J' constraint.  */
      if (FUNC1 (value) == CONST_VECTOR
	  && FUNC3 (FUNC2 (value)) == MODE_VECTOR_INT)
	{
	  value = FUNC12 (DImode, value, FUNC2 (value), 0);
	  return FUNC10 (FUNC5 (value), 'J');
	}
      return false;

    case 'Y':
      /* A V2SF vector containing elements that satisfy 'G'.  */
      return
	(FUNC1 (value) == CONST_VECTOR
	 && FUNC2 (value) == V2SFmode
	 && FUNC9 (FUNC8 (value, 0, 0), 'G')
	 && FUNC9 (FUNC8 (value, 0, 1), 'G'));

    default:
      return false;
    }
}