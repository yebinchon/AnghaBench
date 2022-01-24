#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct cp_binding_level {scalar_t__ kind; scalar_t__ this_entity; struct cp_binding_level* level_chain; } ;
struct TYPE_5__ {scalar_t__ value; scalar_t__ type; } ;
typedef  TYPE_1__ cxx_binding ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int LOOKUP_PREFER_TYPES ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ OVERLOAD ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  TV_NAME_LOOKUP ; 
 struct cp_binding_level* current_binding_level ; 
 scalar_t__ current_class_type ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int FUNC8 (int,int) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (scalar_t__,TYPE_1__*,int) ; 
 scalar_t__ FUNC11 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ sk_class ; 
 scalar_t__ sk_namespace ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (scalar_t__,int) ; 

tree
FUNC15 (tree name, int prefer_type, int nonclass, bool block_p,
		  int namespaces_only, int flags)
{
  cxx_binding *iter;
  tree val = NULL_TREE;

  FUNC13 (TV_NAME_LOOKUP);
  /* Conversion operators are handled specially because ordinary
     unqualified name lookup will not find template conversion
     operators.  */
  if (FUNC0 (name))
    {
      struct cp_binding_level *level;

      for (level = current_binding_level;
	   level && level->kind != sk_namespace;
	   level = level->level_chain)
	{
	  tree class_type;
	  tree operators;

	  /* A conversion operator can only be declared in a class
	     scope.  */
	  if (level->kind != sk_class)
	    continue;

	  /* Lookup the conversion operator in the class.  */
	  class_type = level->this_entity;
	  operators = FUNC9 (class_type, name, /*protect=*/0);
	  if (operators)
	    FUNC4 (TV_NAME_LOOKUP, operators);
	}

      FUNC4 (TV_NAME_LOOKUP, NULL_TREE);
    }

  flags |= FUNC8 (prefer_type, namespaces_only);

  /* First, look in non-namespace scopes.  */

  if (current_class_type == NULL_TREE)
    nonclass = 1;

  if (block_p || !nonclass)
    for (iter = FUNC10 (name, NULL, !nonclass);
	 iter;
	 iter = FUNC10 (name, iter, !nonclass))
      {
	tree binding;

	/* Skip entities we don't want.  */
	if (FUNC1 (iter) ? !block_p : nonclass)
	  continue;

	/* If this is the kind of thing we're looking for, we're done.  */
	if (FUNC11 (iter->value, flags))
	  binding = iter->value;
	else if ((flags & LOOKUP_PREFER_TYPES)
		 && FUNC11 (iter->type, flags))
	  binding = iter->type;
	else
	  binding = NULL_TREE;

	if (binding)
	  {
	    if (FUNC7 (binding))
	      {
		/* A non namespace-scope binding can only be hidden if
		   we are in a local class, due to friend declarations.
		   In particular, consider:

		   void f() {
		     struct A {
		       friend struct B;
		       void g() { B* b; } // error: B is hidden
		     }
		     struct B {};
		   }

		   The standard says that "B" is a local class in "f"
		   (but not nested within "A") -- but that name lookup
		   for "B" does not find this declaration until it is
		   declared directly with "f".

		   In particular:

		   [class.friend]

		   If a friend declaration appears in a local class and
		   the name specified is an unqualified name, a prior
		   declaration is looked up without considering scopes
		   that are outside the innermost enclosing non-class
		   scope. For a friend class declaration, if there is no
		   prior declaration, the class that is specified 
		   belongs to the innermost enclosing non-class scope,
		   but if it is subsequently referenced, its name is not
		   found by name lookup until a matching declaration is
		   provided in the innermost enclosing nonclass scope.
		*/
		FUNC6 (current_class_type &&
			    FUNC2 (current_class_type));

		/* This binding comes from a friend declaration in the local
		   class. The standard (11.4.8) states that the lookup can
		   only succeed if there is a non-hidden declaration in the
		   current scope, which is not the case here.  */
		FUNC4 (TV_NAME_LOOKUP, NULL_TREE);
	      }
	    val = binding;
	    break;
	  }
      }

  /* Now lookup in namespace scopes.  */
  if (!val)
    val = FUNC14 (name, flags);

  /* If we have a single function from a using decl, pull it out.  */
  if (val && FUNC5 (val) == OVERLOAD && !FUNC12 (val))
    val = FUNC3 (val);

  FUNC4 (TV_NAME_LOOKUP, val);
}