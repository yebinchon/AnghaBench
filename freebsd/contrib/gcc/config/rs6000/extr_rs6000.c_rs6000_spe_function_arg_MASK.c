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
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_3__ {int sysv_gregno; scalar_t__ stdarg; } ;
typedef  TYPE_1__ CUMULATIVE_ARGS ;

/* Variables and functions */
 int DCmode ; 
 int DFmode ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GP_ARG_MAX_REG ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int SImode ; 
 scalar_t__ TARGET_E500_DOUBLE ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static rtx
FUNC7 (CUMULATIVE_ARGS *cum, enum machine_mode mode,
			 tree type)
{
  int gregno = cum->sysv_gregno;

  /* On E500 v2, double arithmetic is done on the full 64-bit GPR, but
     are passed and returned in a pair of GPRs for ABI compatibility.  */
  if (TARGET_E500_DOUBLE && (mode == DFmode || mode == DCmode))
    {
      int n_words = FUNC5 (mode, type);

      /* Doubles go in an odd/even register pair (r5/r6, etc).  */
      if (mode == DFmode)
	gregno += (1 - gregno) & 1;

      /* Multi-reg args are not split between registers and stack.  */
      if (gregno + n_words - 1 > GP_ARG_MAX_REG)
	return NULL_RTX;

      return FUNC6 (mode, gregno);
    }
  if (cum->stdarg)
    {
      int n_words = FUNC5 (mode, type);

      /* SPE vectors are put in odd registers.  */
      if (n_words == 2 && (gregno & 1) == 0)
	gregno += 1;

      if (gregno + n_words - 1 <= GP_ARG_MAX_REG)
	{
	  rtx r1, r2;
	  enum machine_mode m = SImode;

	  r1 = FUNC4 (m, gregno);
	  r1 = FUNC2 (m, r1, const0_rtx);
	  r2 = FUNC4 (m, gregno + 1);
	  r2 = FUNC2 (m, r2, FUNC0 (4));
	  return FUNC3 (mode, FUNC1 (2, r1, r2));
	}
      else
	return NULL_RTX;
    }
  else
    {
      if (gregno <= GP_ARG_MAX_REG)
	return FUNC4 (mode, gregno);
      else
	return NULL_RTX;
    }
}