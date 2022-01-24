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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int SIGN_EXTEND ; 
 int /*<<< orphan*/  VOIDmode ; 
 int ZERO_EXTEND ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static rtx
FUNC11 (rtx reg, enum rtx_code extension_code,
   			      enum machine_mode mode)
{
  rtx subreg, insn;
  rtx extension = NULL;

  if (!reg
      || !FUNC1 (reg)
      || (extension_code != SIGN_EXTEND && extension_code != ZERO_EXTEND))
    return NULL;

  subreg = FUNC4 (mode, reg);
  if (extension_code == SIGN_EXTEND)
    extension = FUNC6 (FUNC0 (reg), subreg);
  else
    extension = FUNC7 (FUNC0 (reg), subreg);

  FUNC10 ();
  FUNC2 (FUNC5 (VOIDmode, reg, extension));
  insn = FUNC8 ();
  FUNC3 ();

  if (FUNC9 (insn))
    /* Recognition failed, this is very bad for this optimization.
       Abort the optimization.  */
    return NULL;
  return insn;
}