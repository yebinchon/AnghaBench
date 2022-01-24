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
struct TYPE_2__ {int /*<<< orphan*/  (* imported_module_or_decl ) (scalar_t__,scalar_t__) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ TEMPLATE_DECL ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 TYPE_1__* debug_hooks ; 
 scalar_t__ errorcount ; 
 scalar_t__ global_namespace ; 
 scalar_t__ sorrycount ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 

void
FUNC8 (tree t, tree context)
{
  /* Don't try to emit any debug information if we have errors.  */
  if (sorrycount || errorcount)
    return;

  /* Ignore this FUNCTION_DECL if it refers to a builtin declaration
     of a builtin function.  */
  if (FUNC6 (t) == FUNCTION_DECL
      && FUNC3 (t)
      && FUNC2 (t))
    return;

  /* Do not supply context to imported_module_or_decl, if
     it is a global namespace.  */
  if (context == global_namespace)
    context = NULL_TREE;

  if (FUNC1 (t))
    t = FUNC0 (t);

  /* FIXME: Handle TEMPLATE_DECLs.  */
  for (t = FUNC4 (t); t; t = FUNC5 (t))
    if (FUNC6 (t) != TEMPLATE_DECL)
      (*debug_hooks->imported_module_or_decl) (t, context);
}