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
 scalar_t__ AND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static rtx
FUNC4 (rtx known_true, rtx exp, int insn_code, int insn_index)
{
  rtx term;

  known_true = FUNC1 (known_true, insn_code, insn_index);

  if (FUNC0 (known_true) == AND)
    {
      exp = FUNC4 (FUNC2 (known_true, 0), exp,
				  insn_code, insn_index);
      exp = FUNC4 (FUNC2 (known_true, 1), exp,
				  insn_code, insn_index);
    }
  else
    {
      term = known_true;
      exp = FUNC3 (exp, &term, insn_code, insn_index);
    }

  return exp;
}