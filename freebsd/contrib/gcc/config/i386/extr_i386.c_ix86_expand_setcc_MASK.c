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
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 scalar_t__ DImode ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ QImode ; 
 int /*<<< orphan*/  REG_EQUAL ; 
 scalar_t__ TARGET_64BIT ; 
 scalar_t__ TImode ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ ix86_compare_op0 ; 
 scalar_t__ ix86_compare_op1 ; 
 scalar_t__ FUNC11 (int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC14 (int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

int
FUNC15 (enum rtx_code code, rtx dest)
{
  rtx ret, tmp, tmpreg, equiv;
  rtx second_test, bypass_test;

  if (FUNC1 (ix86_compare_op0) == (TARGET_64BIT ? TImode : DImode))
    return 0; /* FAIL */

  FUNC5 (FUNC1 (dest) == QImode);

  ret = FUNC11 (code, &second_test, &bypass_test);
  FUNC3 (ret, QImode);

  tmp = dest;
  tmpreg = dest;

  FUNC4 (FUNC9 (VOIDmode, tmp, ret));
  if (bypass_test || second_test)
    {
      rtx test = second_test;
      int bypass = 0;
      rtx tmp2 = FUNC8 (QImode);
      if (bypass_test)
	{
	  FUNC5 (!second_test);
	  test = bypass_test;
	  bypass = 1;
	  FUNC2 (test, FUNC12 (FUNC0 (test)));
	}
      FUNC3 (test, QImode);
      FUNC4 (FUNC9 (VOIDmode, tmp2, test));

      if (bypass)
	FUNC4 (FUNC6 (tmp, tmpreg, tmp2));
      else
	FUNC4 (FUNC7 (tmp, tmpreg, tmp2));
    }

  /* Attach a REG_EQUAL note describing the comparison result.  */
  if (ix86_compare_op0 && ix86_compare_op1)
    {
      equiv = FUNC14 (code, QImode,
				       FUNC1 (ix86_compare_op0),
				       ix86_compare_op0, ix86_compare_op1);
      FUNC13 (FUNC10 (), REG_EQUAL, equiv);
    }

  return 1; /* DONE */
}