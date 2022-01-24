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
struct TYPE_2__ {int can_throw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ cfun ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 TYPE_1__* cp_function_chain ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 

tree
FUNC11 (tree fn, tree args)
{
  tree fndecl;

  fn = FUNC5 (fn, args);

  /* If this call might throw an exception, note that fact.  */
  fndecl = FUNC9 (fn);
  if ((!fndecl || !FUNC1 (fndecl))
      && FUNC4 ()
      && cfun)
    cp_function_chain->can_throw = 1;

  /* Some built-in function calls will be evaluated at compile-time in
     fold ().  */
  fn = FUNC8 (fn);

  if (FUNC3 (FUNC2 (fn)))
    return fn;

  fn = FUNC10 (fn);
  if (fn == error_mark_node)
    return error_mark_node;

  if (FUNC0 (FUNC2 (fn)))
    fn = FUNC6 (FUNC2 (fn), fn);
  return FUNC7 (fn);
}