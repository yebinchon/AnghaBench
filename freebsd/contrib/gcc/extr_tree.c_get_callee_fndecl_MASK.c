#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_2__ {scalar_t__ (* lang_get_callee_fndecl ) (scalar_t__) ;} ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ CALL_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 TYPE_1__ lang_hooks ; 
 scalar_t__ FUNC8 (scalar_t__) ; 

tree
FUNC9 (tree call)
{
  tree addr;

  if (call == error_mark_node)
    return call;

  /* It's invalid to call this function with anything but a
     CALL_EXPR.  */
  FUNC7 (FUNC3 (call) == CALL_EXPR);

  /* The first operand to the CALL is the address of the function
     called.  */
  addr = FUNC4 (call, 0);

  FUNC2 (addr);

  /* If this is a readonly function pointer, extract its initial value.  */
  if (FUNC1 (addr) && FUNC3 (addr) != FUNCTION_DECL
      && FUNC5 (addr) && ! FUNC6 (addr)
      && FUNC0 (addr))
    addr = FUNC0 (addr);

  /* If the address is just `&f' for some function `f', then we know
     that `f' is being called.  */
  if (FUNC3 (addr) == ADDR_EXPR
      && FUNC3 (FUNC4 (addr, 0)) == FUNCTION_DECL)
    return FUNC4 (addr, 0);

  /* We couldn't figure out what was being called.  Maybe the front
     end has some idea.  */
  return lang_hooks.lang_get_callee_fndecl (call);
}