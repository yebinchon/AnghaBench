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
typedef  int /*<<< orphan*/ * rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int) ; 
 int HIGH ; 
 int LO_SUM ; 
#define  RTX_BIN_ARITH 136 
#define  RTX_BITFIELD_OPS 135 
#define  RTX_COMM_ARITH 134 
#define  RTX_COMM_COMPARE 133 
#define  RTX_COMPARE 132 
#define  RTX_EXTRA 131 
#define  RTX_OBJ 130 
#define  RTX_TERNARY 129 
#define  RTX_UNARY 128 
 int SUBREG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int VOIDmode ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

rtx
FUNC14 (rtx x)
{
  enum rtx_code code = FUNC0 (x);
  enum machine_mode mode = FUNC1 (x);

  switch (FUNC2 (code))
    {
    case RTX_UNARY:
      return FUNC12 (code, mode,
				       FUNC5 (x, 0), FUNC1 (FUNC5 (x, 0)));
    case RTX_COMM_ARITH:
      if (FUNC13 (FUNC5 (x, 0), FUNC5 (x, 1)))
	return FUNC8 (code, mode, FUNC5 (x, 1), FUNC5 (x, 0));

      /* Fall through....  */

    case RTX_BIN_ARITH:
      return FUNC7 (code, mode, FUNC5 (x, 0), FUNC5 (x, 1));

    case RTX_TERNARY:
    case RTX_BITFIELD_OPS:
      return FUNC11 (code, mode, FUNC1 (FUNC5 (x, 0)),
					 FUNC5 (x, 0), FUNC5 (x, 1),
					 FUNC5 (x, 2));

    case RTX_COMPARE:
    case RTX_COMM_COMPARE:
      return FUNC10 (code, mode,
                                            ((FUNC1 (FUNC5 (x, 0))
                                             != VOIDmode)
                                            ? FUNC1 (FUNC5 (x, 0))
                                            : FUNC1 (FUNC5 (x, 1))),
                                            FUNC5 (x, 0),
                                            FUNC5 (x, 1));

    case RTX_EXTRA:
      if (code == SUBREG)
	return FUNC9 (mode, FUNC4 (x),
				    FUNC1 (FUNC4 (x)),
				    FUNC3 (x));
      break;

    case RTX_OBJ:
      if (code == LO_SUM)
	{
	  /* Convert (lo_sum (high FOO) FOO) to FOO.  */
	  if (FUNC0 (FUNC5 (x, 0)) == HIGH
	      && FUNC6 (FUNC5 (FUNC5 (x, 0), 0), FUNC5 (x, 1)))
	  return FUNC5 (x, 1);
	}
      break;

    default:
      break;
    }
  return NULL;
}