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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
#define  AND 134 
#define  ASHIFT 133 
 int CONST_INT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
#define  IOR 132 
#define  NEG 131 
#define  NOT 130 
 int /*<<< orphan*/  NULL_RTX ; 
#define  PLUS 129 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
#define  XOR 128 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int const,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC8 (rtx x, int count)
{
  enum rtx_code code = FUNC1 (x);
  enum machine_mode mode = FUNC2 (x);
  rtx tem;

  switch (code)
    {
    case ASHIFT:
      /* This is the shift itself.  If it is wide enough, we will return
	 either the value being shifted if the shift count is equal to
	 COUNT or a shift for the difference.  */
      if (FUNC1 (FUNC4 (x, 1)) == CONST_INT
	  && FUNC3 (FUNC4 (x, 1)) >= count)
	return FUNC7 (NULL_RTX, ASHIFT, mode, FUNC4 (x, 0),
				     FUNC3 (FUNC4 (x, 1)) - count);
      break;

    case NEG:  case NOT:
      if ((tem = FUNC8 (FUNC4 (x, 0), count)) != 0)
	return FUNC6 (code, mode, tem, mode);

      break;

    case PLUS:  case IOR:  case XOR:  case AND:
      /* If we can safely shift this constant and we find the inner shift,
	 make a new operation.  */
      if (FUNC1 (FUNC4 (x, 1)) == CONST_INT
	  && (FUNC3 (FUNC4 (x, 1)) & ((((HOST_WIDE_INT) 1 << count)) - 1)) == 0
	  && (tem = FUNC8 (FUNC4 (x, 0), count)) != 0)
	return FUNC5 (code, mode, tem,
				    FUNC0 (FUNC3 (FUNC4 (x, 1)) >> count));

      break;

    default:
      break;
    }

  return 0;
}