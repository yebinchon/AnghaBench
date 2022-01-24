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
typedef  enum attr_type { ____Placeholder_attr_type } attr_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  REG_DEP_ANTI 134 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  TYPE_BRANCH 133 
 int TYPE_COMPARE ; 
 int TYPE_FPCMP ; 
#define  TYPE_FPLOAD 132 
#define  TYPE_FPSTORE 131 
 int TYPE_IALU ; 
#define  TYPE_LOAD 130 
 int TYPE_SHIFT ; 
#define  TYPE_SLOAD 129 
#define  TYPE_STORE 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9 (rtx insn, rtx link, rtx dep_insn, int cost)
{
  enum attr_type insn_type, dep_type;
  rtx pat = FUNC1(insn);
  rtx dep_pat = FUNC1 (dep_insn);

  if (FUNC7 (insn) < 0 || FUNC7 (dep_insn) < 0)
    return cost;

  insn_type = FUNC6 (insn);
  dep_type = FUNC6 (dep_insn);

  switch (FUNC2 (link))
    {
    case 0:
      /* Data dependency; DEP_INSN writes a register that INSN reads some
	 cycles later.  */

      switch (insn_type)
	{
	case TYPE_STORE:
	case TYPE_FPSTORE:
	  /* Get the delay iff the address of the store is the dependence.  */
	  if (FUNC0 (pat) != SET || FUNC0 (dep_pat) != SET)
	    return cost;

	  if (FUNC8 (FUNC3 (dep_pat), FUNC4 (pat)))
	    return cost;
	  return cost + 3;

	case TYPE_LOAD:
	case TYPE_SLOAD:
	case TYPE_FPLOAD:
	  /* If a load, then the dependence must be on the memory address.  If
	     the addresses aren't equal, then it might be a false dependency */
	  if (dep_type == TYPE_STORE || dep_type == TYPE_FPSTORE)
	    {
	      if (FUNC0 (pat) != SET || FUNC0 (dep_pat) != SET
		  || FUNC0 (FUNC3 (dep_pat)) != MEM        
		  || FUNC0 (FUNC4 (pat)) != MEM
		  || ! FUNC8 (FUNC5 (FUNC3 (dep_pat), 0),
				    FUNC5 (FUNC4 (pat), 0)))
		return cost + 2;

	      return cost + 8;        
	    }
	  break;

	case TYPE_BRANCH:
	  /* Compare to branch latency is 0.  There is no benefit from
	     separating compare and branch.  */
	  if (dep_type == TYPE_COMPARE)
	    return 0;
	  /* Floating point compare to branch latency is less than
	     compare to conditional move.  */
	  if (dep_type == TYPE_FPCMP)
	    return cost - 1;
	  break;
	default:
	  break;
	}
	break;

    case REG_DEP_ANTI:
      /* Anti-dependencies only penalize the fpu unit.  */
      if (insn_type == TYPE_IALU || insn_type == TYPE_SHIFT)
        return 0;
      break;

    default:
      break;
    }    

  return cost;
}