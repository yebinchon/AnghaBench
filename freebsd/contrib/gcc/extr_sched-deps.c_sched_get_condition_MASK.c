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
 scalar_t__ COND_EXEC ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int UNKNOWN ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ pc_rtx ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int FUNC10 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static rtx
FUNC11 (rtx insn)
{
  rtx pat = FUNC3 (insn);
  rtx src;

  if (pat == 0)
    return 0;

  if (FUNC1 (pat) == COND_EXEC)
    return FUNC0 (pat);

  if (!FUNC6 (insn) || !FUNC8 (insn))
    return 0;

  src = FUNC4 (FUNC9 (insn));

  if (FUNC5 (src, 2) == pc_rtx)
    return FUNC5 (src, 0);
  else if (FUNC5 (src, 1) == pc_rtx)
    {
      rtx cond = FUNC5 (src, 0);
      enum rtx_code revcode = FUNC10 (cond, insn);

      if (revcode == UNKNOWN)
	return 0;
      return FUNC7 (revcode, FUNC2 (cond), FUNC5 (cond, 0),
			     FUNC5 (cond, 1));
    }

  return 0;
}