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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ PC ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

rtx
FUNC5 (rtx insn)
{
  rtx pat;
  if (!FUNC1 (insn))
    return NULL_RTX;
  pat = FUNC2 (insn);

  /* The set is allowed to appear either as the insn pattern or
     the first set in a PARALLEL.  */
  if (FUNC0 (pat) == PARALLEL)
    pat = FUNC4 (pat, 0, 0);
  if (FUNC0 (pat) == SET && FUNC0 (FUNC3 (pat)) == PC)
    return pat;

  return NULL_RTX;
}