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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ clobbers_seen_this_insn ; 
 scalar_t__ dup_operands_seen_this_insn ; 
 scalar_t__ max_clobbers_per_insn ; 
 scalar_t__ max_dup_operands ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (rtx insn)
{
  int i;

  /* Walk the insn pattern to gather the #define's status.  */
  clobbers_seen_this_insn = 0;
  dup_operands_seen_this_insn = 0;
  if (FUNC0 (insn, 1) != 0)
    for (i = 0; i < FUNC2 (insn, 1); i++)
      FUNC3 (FUNC1 (insn, 1, i), 1, 0);

  if (clobbers_seen_this_insn > max_clobbers_per_insn)
    max_clobbers_per_insn = clobbers_seen_this_insn;
  if (dup_operands_seen_this_insn > max_dup_operands)
    max_dup_operands = dup_operands_seen_this_insn;
}