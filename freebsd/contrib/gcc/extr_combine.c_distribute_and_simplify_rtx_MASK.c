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

/* Variables and functions */
 int AND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int IOR ; 
 scalar_t__ NOT ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  SET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int XOR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC7 (rtx x, int n)
{
  enum machine_mode mode;
  enum rtx_code outer_code, inner_code;
  rtx decomposed, distributed, inner_op0, inner_op1, new_op0, new_op1, tmp;

  decomposed = FUNC3 (x, n);
  if (!FUNC0 (decomposed))
    return NULL_RTX;

  mode = FUNC2 (x);
  outer_code = FUNC1 (x);
  distributed = FUNC3 (x, !n);

  inner_code = FUNC1 (decomposed);
  inner_op0 = FUNC3 (decomposed, 0);
  inner_op1 = FUNC3 (decomposed, 1);

  /* Special case (and (xor B C) (not A)), which is equivalent to
     (xor (ior A B) (ior A C))  */
  if (outer_code == AND && inner_code == XOR && FUNC1 (distributed) == NOT)
    {
      distributed = FUNC3 (distributed, 0);
      outer_code = IOR;
    }

  if (n == 0)
    {
      /* Distribute the second term.  */
      new_op0 = FUNC6 (outer_code, mode, inner_op0, distributed);
      new_op1 = FUNC6 (outer_code, mode, inner_op1, distributed);
    }
  else
    {
      /* Distribute the first term.  */
      new_op0 = FUNC6 (outer_code, mode, distributed, inner_op0);
      new_op1 = FUNC6 (outer_code, mode, distributed, inner_op1);
    }

  tmp = FUNC4 (FUNC6 (inner_code, mode,
						     new_op0, new_op1));
  if (FUNC1 (tmp) != outer_code
      && FUNC5 (tmp, SET) < FUNC5 (x, SET))
    return tmp;

  return NULL_RTX;
}