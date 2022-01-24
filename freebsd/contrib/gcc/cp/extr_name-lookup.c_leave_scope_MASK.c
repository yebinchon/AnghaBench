#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ kind; scalar_t__ binding_depth; struct TYPE_8__* level_chain; scalar_t__ has_visibility; } ;
typedef  TYPE_1__ cxx_scope ;

/* Variables and functions */
 scalar_t__ ENABLE_SCOPE_CHECKING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ binding_depth ; 
 TYPE_1__* class_binding_level ; 
 TYPE_1__* current_binding_level ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* free_binding_level ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  global_namespace ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  input_line ; 
 int is_class_level ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ sk_class ; 
 scalar_t__ sk_namespace ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

cxx_scope *
FUNC7 (void)
{
  cxx_scope *scope = current_binding_level;

  if (scope->kind == sk_namespace && class_binding_level)
    current_binding_level = class_binding_level;

  /* We cannot leave a scope, if there are none left.  */
  if (FUNC0 (global_namespace))
    FUNC2 (!FUNC3 (scope));

  if (ENABLE_SCOPE_CHECKING)
    {
      FUNC4 (--binding_depth);
      FUNC1 (scope, input_line, "leave");
      if (is_class_level != (scope == class_binding_level))
	{
	  FUNC4 (binding_depth);
	  FUNC6 ("XXX is_class_level != (current_scope == class_scope)\n");
	}
      is_class_level = 0;
    }

#ifdef HANDLE_PRAGMA_VISIBILITY
  if (scope->has_visibility)
    pop_visibility ();
#endif

  /* Move one nesting level up.  */
  current_binding_level = scope->level_chain;

  /* Namespace-scopes are left most probably temporarily, not
     completely; they can be reopened later, e.g. in namespace-extension
     or any name binding activity that requires us to resume a
     namespace.  For classes, we cache some binding levels.  For other
     scopes, we just make the structure available for reuse.  */
  if (scope->kind != sk_namespace
      && scope->kind != sk_class)
    {
      scope->level_chain = free_binding_level;
      FUNC2 (!ENABLE_SCOPE_CHECKING
		  || scope->binding_depth == binding_depth);
      free_binding_level = scope;
    }

  /* Find the innermost enclosing class scope, and reset
     CLASS_BINDING_LEVEL appropriately.  */
  if (scope->kind == sk_class)
    {
      class_binding_level = NULL;
      for (scope = current_binding_level; scope; scope = scope->level_chain)
	if (scope->kind == sk_class)
	  {
	    class_binding_level = scope;
	    break;
	  }
    }

  return current_binding_level;
}