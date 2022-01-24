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
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  GEU 131 
#define  GTU 130 
#define  LEU 129 
#define  LTU 128 
 char* FUNC1 (char*,char*) ; 
 char const* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,char const*) ; 

const char *
FUNC3 (rtx insn, rtx *operands, bool inverted_p)
{
  const char *branch[2];

  /* Make BRANCH[1] branch to OPERANDS[1] when the condition is true.
     Make BRANCH[0] branch on the inverse condition.  */
  switch (FUNC0 (operands[0]))
    {
      /* These cases are equivalent to comparisons against zero.  */
    case LEU:
      inverted_p = !inverted_p;
      /* Fall through.  */
    case GTU:
      branch[!inverted_p] = FUNC1 ("bne", "%2,%.,%1");
      branch[inverted_p] = FUNC1 ("beq", "%2,%.,%1");
      break;

      /* These cases are always true or always false.  */
    case LTU:
      inverted_p = !inverted_p;
      /* Fall through.  */
    case GEU:
      branch[!inverted_p] = FUNC1 ("beq", "%.,%.,%1");
      branch[inverted_p] = FUNC1 ("bne", "%.,%.,%1");
      break;

    default:
      branch[!inverted_p] = FUNC1 ("b%C0z", "%2,%1");
      branch[inverted_p] = FUNC1 ("b%N0z", "%2,%1");
      break;
    }
  return FUNC2 (insn, operands, branch[1], branch[0]);
}