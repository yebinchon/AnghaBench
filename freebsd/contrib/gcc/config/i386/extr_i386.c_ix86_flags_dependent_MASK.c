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
typedef  enum attr_type { ____Placeholder_attr_type } attr_type ;

/* Variables and functions */
 scalar_t__ FLAGS_REG ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ PARALLEL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ REG ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ SET ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int TYPE_FCMOV ; 
 int TYPE_IBR ; 
 int TYPE_ICMOV ; 
 int TYPE_SETCC ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

__attribute__((used)) static int
FUNC8 (rtx insn, rtx dep_insn, enum attr_type insn_type)
{
  rtx set, set2;

  /* Simplify the test for uninteresting insns.  */
  if (insn_type != TYPE_SETCC
      && insn_type != TYPE_ICMOV
      && insn_type != TYPE_FCMOV
      && insn_type != TYPE_IBR)
    return 0;

  if ((set = FUNC7 (dep_insn)) != 0)
    {
      set = FUNC3 (set);
      set2 = NULL_RTX;
    }
  else if (FUNC0 (FUNC1 (dep_insn)) == PARALLEL
	   && FUNC5 (FUNC1 (dep_insn), 0) == 2
	   && FUNC0 (FUNC4 (FUNC1 (dep_insn), 0, 0)) == SET
	   && FUNC0 (FUNC4 (FUNC1 (dep_insn), 0, 1)) == SET)
    {
      set = FUNC3 (FUNC4 (FUNC1 (dep_insn), 0, 0));
      set2 = FUNC3 (FUNC4 (FUNC1 (dep_insn), 0, 0));
    }
  else
    return 0;

  if (FUNC0 (set) != REG || FUNC2 (set) != FLAGS_REG)
    return 0;

  /* This test is true if the dependent insn reads the flags but
     not any other potentially set register.  */
  if (!FUNC6 (set, FUNC1 (insn)))
    return 0;

  if (set2 && FUNC6 (set2, FUNC1 (insn)))
    return 0;

  return 1;
}