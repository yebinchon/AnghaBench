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
typedef  enum attr_vr4130_class { ____Placeholder_attr_vr4130_class } attr_vr4130_class ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ REG_DEP_ANTI ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ VR4130_CLASS_ALU ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ vr4130_last_insn ; 
 int FUNC6 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC7 (rtx insn1, rtx insn2)
{
  rtx dep;

  /* Check for the following case:

     1) there is some other instruction X with an anti dependence on INSN1;
     2) X has a higher priority than INSN2; and
     3) X is an arithmetic instruction (and thus has no unit restrictions).

     If INSN1 is the last instruction blocking X, it would better to
     choose (INSN1, X) over (INSN2, INSN1).  */
  for (dep = FUNC0 (insn1); dep != 0; dep = FUNC3 (dep, 1))
    if (FUNC2 (dep) == REG_DEP_ANTI
	&& FUNC1 (FUNC3 (dep, 0)) > FUNC1 (insn2)
	&& FUNC5 (FUNC3 (dep, 0)) >= 0
	&& FUNC4 (FUNC3 (dep, 0)) == VR4130_CLASS_ALU)
      return false;

  if (vr4130_last_insn != 0
      && FUNC5 (insn1) >= 0
      && FUNC5 (insn2) >= 0)
    {
      /* See whether INSN1 and INSN2 use different execution units,
	 or if they are both ALU-type instructions.  If so, they can
	 probably execute in parallel.  */
      enum attr_vr4130_class class1 = FUNC4 (insn1);
      enum attr_vr4130_class class2 = FUNC4 (insn2);
      if (class1 != class2 || class1 == VR4130_CLASS_ALU)
	{
	  /* If only one of the instructions has a dependence on
	     vr4130_last_insn, prefer to schedule the other one first.  */
	  bool dep1 = FUNC6 (insn1);
	  bool dep2 = FUNC6 (insn2);
	  if (dep1 != dep2)
	    return dep1;

	  /* Prefer to schedule INSN2 ahead of INSN1 if vr4130_last_insn
	     is not an ALU-type instruction and if INSN1 uses the same
	     execution unit.  (Note that if this condition holds, we already
	     know that INSN2 uses a different execution unit.)  */
	  if (class1 != VR4130_CLASS_ALU
	      && FUNC5 (vr4130_last_insn) >= 0
	      && class1 == FUNC4 (vr4130_last_insn))
	    return true;
	}
    }
  return false;
}