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
struct noce_if_info {int /*<<< orphan*/  cond; int /*<<< orphan*/  x; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static rtx
FUNC7 (struct noce_if_info *if_info)
{
  rtx insn;
  rtx seq = FUNC3 ();

  FUNC5 (if_info->x);
  FUNC5 (if_info->cond);
  FUNC6 (seq);
  FUNC2 ();

  /* Make sure that all of the instructions emitted are recognizable,
     and that we haven't introduced a new jump instruction.
     As an exercise for the reader, build a general mechanism that
     allows proper placement of required clobbers.  */
  for (insn = seq; insn; insn = FUNC1 (insn))
    if (FUNC0 (insn)
	|| FUNC4 (insn) == -1)
      return NULL_RTX;

  return seq;
}