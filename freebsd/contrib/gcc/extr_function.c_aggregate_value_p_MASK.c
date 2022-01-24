#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_3__ {scalar_t__ (* return_in_memory ) (scalar_t__,scalar_t__) ;} ;
struct TYPE_4__ {TYPE_1__ calls; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
#define  CALL_EXPR 132 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
#define  FUNCTION_DECL 131 
#define  FUNCTION_TYPE 130 
#define  IDENTIFIER_NODE 129 
#define  METHOD_TYPE 128 
 scalar_t__ NULL_TREE ; 
 int const PARM_DECL ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int const RESULT_DECL ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int const FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 size_t FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ VOID_TYPE ; 
 int /*<<< orphan*/ * call_used_regs ; 
 scalar_t__ flag_pcc_struct_return ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int** hard_regno_nregs ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 
 TYPE_2__ targetm ; 

int
FUNC14 (tree exp, tree fntype)
{
  int i, regno, nregs;
  rtx reg;

  tree type = (FUNC9 (exp)) ? exp : FUNC7 (exp);

  /* DECL node associated with FNTYPE when relevant, which we might need to
     check for by-invisible-reference returns, typically for CALL_EXPR input
     EXPressions.  */
  tree fndecl = NULL_TREE;
  
  if (fntype)
    switch (FUNC6 (fntype))
      {
      case CALL_EXPR:
	fndecl = FUNC11 (fntype);
	fntype = fndecl ? FUNC7 (fndecl) : 0;
	break;
      case FUNCTION_DECL:
	fndecl = fntype;
	fntype = FUNC7 (fndecl);
	break;
      case FUNCTION_TYPE:
      case METHOD_TYPE:
        break;
      case IDENTIFIER_NODE:
	fntype = 0;
	break;
      default:
	/* We don't expect other rtl types here.  */
	FUNC10 ();
      }

  if (FUNC6 (type) == VOID_TYPE)
    return 0;

  /* If the front end has decided that this needs to be passed by
     reference, do so.  */
  if ((FUNC6 (exp) == PARM_DECL || FUNC6 (exp) == RESULT_DECL)
      && FUNC1 (exp))
    return 1;

  /* If the EXPression is a CALL_EXPR, honor DECL_BY_REFERENCE set on the
     called function RESULT_DECL, meaning the function returns in memory by
     invisible reference.  This check lets front-ends not set TREE_ADDRESSABLE
     on the function type, which used to be the way to request such a return
     mechanism but might now be causing troubles at gimplification time if
     temporaries with the function type need to be created.  */
  if (FUNC6 (exp) == CALL_EXPR && fndecl && FUNC2 (fndecl)
      && FUNC1 (FUNC2 (fndecl)))
    return 1;
      
  if (targetm.calls.return_in_memory (type, fntype))
    return 1;
  /* Types that are TREE_ADDRESSABLE must be constructed in memory,
     and thus can't be returned in registers.  */
  if (FUNC5 (type))
    return 1;
  if (flag_pcc_struct_return && FUNC0 (type))
    return 1;
  /* Make sure we have suitable call-clobbered regs to return
     the value in; if not, we must return it in memory.  */
  reg = FUNC12 (type, 0, fntype, 0);

  /* If we have something other than a REG (e.g. a PARALLEL), then assume
     it is OK.  */
  if (!FUNC4 (reg))
    return 0;

  regno = FUNC3 (reg);
  nregs = hard_regno_nregs[regno][FUNC8 (type)];
  for (i = 0; i < nregs; i++)
    if (! call_used_regs[regno + i])
      return 1;
  return 0;
}