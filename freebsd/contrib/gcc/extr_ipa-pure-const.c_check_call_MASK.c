#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct cgraph_node {int dummy; } ;
typedef  TYPE_1__* funct_state ;
typedef  enum availability { ____Placeholder_availability } availability ;
struct TYPE_4__ {scalar_t__ pure_const_state; } ;

/* Variables and functions */
 int AVAIL_NOT_AVAILABLE ; 
 int AVAIL_OVERWRITABLE ; 
#define  BUILT_IN_LONGJMP 129 
#define  BUILT_IN_NONLOCAL_GOTO 128 
 scalar_t__ BUILT_IN_NORMAL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int ECF_PURE ; 
 scalar_t__ IPA_CONST ; 
 void* IPA_NEITHER ; 
 void* IPA_PURE ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (struct cgraph_node*) ; 
 struct cgraph_node* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 

__attribute__((used)) static void
FUNC11 (funct_state local, tree call_expr) 
{
  int flags = FUNC5(call_expr);
  tree operand_list = FUNC3 (call_expr, 1);
  tree operand;
  tree callee_t = FUNC9 (call_expr);
  struct cgraph_node* callee;
  enum availability avail = AVAIL_NOT_AVAILABLE;

  for (operand = operand_list;
       operand != NULL_TREE;
       operand = FUNC2 (operand))
    {
      tree argument = FUNC4 (operand);
      FUNC8 (local, argument);
    }
  
  /* The const and pure flags are set by a variety of places in the
     compiler (including here).  If someone has already set the flags
     for the callee, (such as for some of the builtins) we will use
     them, otherwise we will compute our own information. 
  
     Const and pure functions have less clobber effects than other
     functions so we process these first.  Otherwise if it is a call
     outside the compilation unit or an indirect call we punt.  This
     leaves local calls which will be processed by following the call
     graph.  */  
  if (callee_t)
    {
      callee = FUNC7(callee_t);
      avail = FUNC6 (callee);

      /* When bad things happen to bad functions, they cannot be const
	 or pure.  */
      if (FUNC10 (callee_t))
	local->pure_const_state = IPA_NEITHER;

      if (FUNC0 (callee_t) == BUILT_IN_NORMAL)
	switch (FUNC1 (callee_t))
	  {
	  case BUILT_IN_LONGJMP:
	  case BUILT_IN_NONLOCAL_GOTO:
	    local->pure_const_state = IPA_NEITHER;
	    break;
	  default:
	    break;
	  }
    }

  /* The callee is either unknown (indirect call) or there is just no
     scannable code for it (external call) .  We look to see if there
     are any bits available for the callee (such as by declaration or
     because it is builtin) and process solely on the basis of those
     bits. */
  if (avail == AVAIL_NOT_AVAILABLE || avail == AVAIL_OVERWRITABLE)
    {
      if (flags & ECF_PURE) 
	{
	  if (local->pure_const_state == IPA_CONST)
	    local->pure_const_state = IPA_PURE;
	}
      else 
	local->pure_const_state = IPA_NEITHER;
    }
  else
    {
      /* We have the code and we will scan it for the effects. */
      if (flags & ECF_PURE) 
	{
	  if (local->pure_const_state == IPA_CONST)
	    local->pure_const_state = IPA_PURE;
	}
    }
}