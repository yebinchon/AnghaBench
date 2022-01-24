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
struct TYPE_4__ {scalar_t__ this_entity; } ;
typedef  TYPE_1__ cxx_scope ;
typedef  int /*<<< orphan*/  cxx_binding ;
typedef  int /*<<< orphan*/  LOCAL_BINDING_P ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ TREE_LIST ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__,scalar_t__,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static cxx_binding *
FUNC9 (tree name, cxx_scope *scope)
{
  tree class_type;
  tree type_binding;
  tree value_binding;
  cxx_binding *binding;

  class_type = scope->this_entity;

  /* Get the type binding.  */
  type_binding = FUNC6 (class_type, name,
				/*protect=*/2, /*want_type=*/true);
  /* Get the value binding.  */
  value_binding = FUNC6 (class_type, name,
				 /*protect=*/2, /*want_type=*/false);

  if (value_binding
      && (FUNC3 (value_binding) == TYPE_DECL
	  || FUNC2 (value_binding)
	  || (FUNC3 (value_binding) == TREE_LIST
	      && FUNC4 (value_binding) == error_mark_node
	      && (FUNC3 (FUNC5 (value_binding))
		  == TYPE_DECL))))
    /* We found a type binding, even when looking for a non-type
       binding.  This means that we already processed this binding
       above.  */
    ;
  else if (value_binding)
    {
      if (FUNC3 (value_binding) == TREE_LIST
	  && FUNC4 (value_binding) == error_mark_node)
	/* NAME is ambiguous.  */
	;
      else if (FUNC1 (value_binding))
	/* NAME is some overloaded functions.  */
	value_binding = FUNC0 (value_binding);
    }

  /* If we found either a type binding or a value binding, create a
     new binding object.  */
  if (type_binding || value_binding)
    {
      binding = FUNC7 (name,
				   value_binding,
				   type_binding,
				   scope);
      /* This is a class-scope binding, not a block-scope binding.  */
      LOCAL_BINDING_P (binding) = 0;
      FUNC8 (binding, value_binding, class_type);
    }
  else
    binding = NULL;

  return binding;
}