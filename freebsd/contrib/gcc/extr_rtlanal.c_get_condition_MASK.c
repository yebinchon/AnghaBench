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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ LABEL_REF ; 
 int /*<<< orphan*/  NULL_RTX ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__,int,scalar_t__*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

rtx
FUNC8 (rtx jump, rtx *earliest, int allow_cc_mode, int valid_at_insn_p)
{
  rtx cond;
  int reverse;
  rtx set;

  /* If this is not a standard conditional jump, we can't parse it.  */
  if (!FUNC2 (jump)
      || ! FUNC5 (jump))
    return 0;
  set = FUNC7 (jump);

  cond = FUNC4 (FUNC3 (set), 0);

  /* If this branches to JUMP_LABEL when the condition is false, reverse
     the condition.  */
  reverse
    = FUNC0 (FUNC4 (FUNC3 (set), 2)) == LABEL_REF
      && FUNC4 (FUNC4 (FUNC3 (set), 2), 0) == FUNC1 (jump);

  return FUNC6 (jump, cond, reverse, earliest, NULL_RTX,
				 allow_cc_mode, valid_at_insn_p);
}