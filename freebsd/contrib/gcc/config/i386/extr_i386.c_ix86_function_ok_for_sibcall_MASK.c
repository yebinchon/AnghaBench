#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_6__ {TYPE_1__* machine; scalar_t__ decl; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* binds_local_p ) (scalar_t__) ;} ;
struct TYPE_4__ {scalar_t__ force_align_arg_pointer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TARGET_64BIT ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 TYPE_3__* cfun ; 
 scalar_t__ flag_pic ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 TYPE_2__ targetm ; 

__attribute__((used)) static bool
FUNC11 (tree decl, tree exp)
{
  tree func;
  rtx a, b;

  /* If we are generating position-independent code, we cannot sibcall
     optimize any indirect call, or a direct call to a global function,
     as the PLT requires %ebx be live.  */
  if (!TARGET_64BIT && flag_pic && (!decl || !targetm.binds_local_p (decl)))
    return false;

  if (decl)
    func = decl;
  else
    {
      func = FUNC5 (FUNC4 (exp, 0));
      if (FUNC2 (func))
        func = FUNC5 (func);
    }

  /* Check that the return value locations are the same.  Like
     if we are returning floats on the 80387 register stack, we cannot
     make a sibcall from a function that doesn't return a float to a
     function that does or, conversely, from a function that does return
     a float to a function that doesn't; the necessary stack adjustment
     would not be executed.  This is also the place we notice
     differences in the return value ABI.  Note that it is ok for one
     of the functions to have void return type as long as the return
     value of the other is passed in a register.  */
  a = FUNC8 (FUNC5 (exp), func, false);
  b = FUNC8 (FUNC5 (FUNC1 (cfun->decl)),
			   cfun->decl, false);
  if (FUNC3 (a) || FUNC3 (b))
    {
      if (!FUNC9 (a, b))
	return false;
    }
  else if (FUNC6 (FUNC5 (FUNC1 (cfun->decl))))
    ;
  else if (!FUNC9 (a, b))
    return false;

  /* If this call is indirect, we'll need to be able to use a call-clobbered
     register for the address of the target function.  Make sure that all
     such registers are not used for passing parameters.  */
  if (!decl && !TARGET_64BIT)
    {
      tree type;

      /* We're looking at the CALL_EXPR, we need the type of the function.  */
      type = FUNC4 (exp, 0);		/* pointer expression */
      type = FUNC5 (type);			/* pointer type */
      type = FUNC5 (type);			/* function type */

      if (FUNC7 (type, NULL) >= 3)
	{
	  /* ??? Need to count the actual number of registers to be used,
	     not the possible number of registers.  Fix later.  */
	  return false;
	}
    }

#if TARGET_DLLIMPORT_DECL_ATTRIBUTES
  /* Dllimport'd functions are also called indirectly.  */
  if (decl && DECL_DLLIMPORT_P (decl)
      && ix86_function_regparm (TREE_TYPE (decl), NULL) >= 3)
    return false;
#endif

  /* If we forced aligned the stack, then sibcalling would unalign the
     stack, which may break the called function.  */
  if (cfun->machine->force_align_arg_pointer)
    return false;

  /* Otherwise okay.  That also includes certain types of indirect calls.  */
  return true;
}