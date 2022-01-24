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
 int /*<<< orphan*/  CCEQmode ; 
 int DImode ; 
 int EQ ; 
 int GE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int GEU ; 
 int LE ; 
 int LEU ; 
 int NE ; 
 int ORDERED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int SImode ; 
 scalar_t__ TARGET_E500 ; 
 int /*<<< orphan*/  TARGET_FPRS ; 
 scalar_t__ TARGET_HARD_FLOAT ; 
 scalar_t__ TARGET_POWERPC64 ; 
 int UNGE ; 
 int UNLE ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ rs6000_compare_fp_p ; 
 int /*<<< orphan*/  rs6000_compare_op0 ; 
 int /*<<< orphan*/  rs6000_compare_op1 ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 

void
FUNC16 (enum rtx_code code, rtx result)
{
  rtx condition_rtx;
  enum machine_mode op_mode;
  enum rtx_code cond_code;

  condition_rtx = FUNC14 (code);
  cond_code = FUNC0 (condition_rtx);

  if (TARGET_E500 && rs6000_compare_fp_p
      && !TARGET_FPRS && TARGET_HARD_FLOAT)
    {
      rtx t;

      FUNC2 (condition_rtx, SImode);
      t = FUNC3 (condition_rtx, 0);

      FUNC6 (cond_code == NE || cond_code == EQ);

      if (cond_code == NE)
	FUNC5 (FUNC7 (t, t));

      FUNC5 (FUNC8 (result, t));
      return;
    }

  if (cond_code == NE
      || cond_code == GE || cond_code == LE
      || cond_code == GEU || cond_code == LEU
      || cond_code == ORDERED || cond_code == UNGE || cond_code == UNLE)
    {
      rtx not_result = FUNC9 (CCEQmode);
      rtx not_op, rev_cond_rtx;
      enum machine_mode cc_mode;

      cc_mode = FUNC1 (FUNC3 (condition_rtx, 0));

      rev_cond_rtx = FUNC13 (FUNC15 (cc_mode, cond_code),
				     SImode, FUNC3 (condition_rtx, 0), const0_rtx);
      not_op = FUNC10 (CCEQmode, rev_cond_rtx, const0_rtx);
      FUNC5 (FUNC12 (VOIDmode, not_result, not_op));
      condition_rtx = FUNC11 (VOIDmode, not_result, const0_rtx);
    }

  op_mode = FUNC1 (rs6000_compare_op0);
  if (op_mode == VOIDmode)
    op_mode = FUNC1 (rs6000_compare_op1);

  if (TARGET_POWERPC64 && (op_mode == DImode || rs6000_compare_fp_p))
    {
      FUNC2 (condition_rtx, DImode);
      FUNC4 (result, condition_rtx, 0);
    }
  else
    {
      FUNC2 (condition_rtx, SImode);
      FUNC5 (FUNC12 (VOIDmode, result, condition_rtx));
    }
}