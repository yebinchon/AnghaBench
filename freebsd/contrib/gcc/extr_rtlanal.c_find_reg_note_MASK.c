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
typedef  enum reg_note { ____Placeholder_reg_note } reg_note ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

rtx
FUNC5 (rtx insn, enum reg_note kind, rtx datum)
{
  rtx link;

  FUNC4 (insn);

  /* Ignore anything that is not an INSN, JUMP_INSN or CALL_INSN.  */
  if (! FUNC0 (insn))
    return 0;
  if (datum == 0)
    {
      for (link = FUNC1 (insn); link; link = FUNC3 (link, 1))
	if (FUNC2 (link) == kind)
	  return link;
      return 0;
    }

  for (link = FUNC1 (insn); link; link = FUNC3 (link, 1))
    if (FUNC2 (link) == kind && datum == FUNC3 (link, 0))
      return link;
  return 0;
}