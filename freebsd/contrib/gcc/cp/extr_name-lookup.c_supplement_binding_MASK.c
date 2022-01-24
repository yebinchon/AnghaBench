#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_5__ {scalar_t__ value; int value_is_inherited; TYPE_1__* scope; scalar_t__ type; } ;
typedef  TYPE_2__ cxx_binding ;
struct TYPE_4__ {scalar_t__ kind; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ NAMESPACE_DECL ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  TV_NAME_LOOKUP ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ sk_class ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC16 (cxx_binding *binding, tree decl)
{
  tree bval = binding->value;
  bool ok = true;

  FUNC14 (TV_NAME_LOOKUP);
  if (FUNC9 (decl) == TYPE_DECL && FUNC1 (decl))
    /* The new name is the type name.  */
    binding->type = decl;
  else if (/* BVAL is null when push_class_level_binding moves an
	      inherited type-binding out of the way to make room for a
	      new value binding.  */
	   !bval
	   /* BVAL is error_mark_node when DECL's name has been used
	      in a non-class scope prior declaration.  In that case,
	      we should have already issued a diagnostic; for graceful
	      error recovery purpose, pretend this was the intended
	      declaration for that name.  */
	   || bval == error_mark_node
	   /* If BVAL is anticipated but has not yet been declared,
	      pretend it is not there at all.  */
	   || (FUNC9 (bval) == FUNCTION_DECL
	       && FUNC0 (bval)
	       && !FUNC4 (bval)))
    binding->value = decl;
  else if (FUNC9 (bval) == TYPE_DECL && FUNC1 (bval))
    {
      /* The old binding was a type name.  It was placed in
	 VALUE field because it was thought, at the point it was
	 declared, to be the only entity with such a name.  Move the
	 type name into the type slot; it is now hidden by the new
	 binding.  */
      binding->type = bval;
      binding->value = decl;
      binding->value_is_inherited = false;
    }
  else if (FUNC9 (bval) == TYPE_DECL
	   && FUNC9 (decl) == TYPE_DECL
	   && FUNC5 (decl) == FUNC5 (bval)
	   && binding->scope->kind != sk_class
	   && (FUNC13 (FUNC10 (decl), FUNC10 (bval))
	       /* If either type involves template parameters, we must
		  wait until instantiation.  */
	       || FUNC15 (FUNC10 (decl))
	       || FUNC15 (FUNC10 (bval))))
    /* We have two typedef-names, both naming the same type to have
       the same name.  In general, this is OK because of:

	 [dcl.typedef]

	 In a given scope, a typedef specifier can be used to redefine
	 the name of any type declared in that scope to refer to the
	 type to which it already refers.

       However, in class scopes, this rule does not apply due to the
       stricter language in [class.mem] prohibiting redeclarations of
       members.  */
    ok = false;
  /* There can be two block-scope declarations of the same variable,
     so long as they are `extern' declarations.  However, there cannot
     be two declarations of the same static data member:

       [class.mem]

       A member shall not be declared twice in the
       member-specification.  */
  else if (FUNC9 (decl) == VAR_DECL && FUNC9 (bval) == VAR_DECL
	   && FUNC3 (decl) && FUNC3 (bval)
	   && !FUNC2 (decl))
    {
      FUNC11 (decl, binding->value, /*newdecl_is_friend=*/false);
      ok = false;
    }
  else if (FUNC9 (decl) == NAMESPACE_DECL
	   && FUNC9 (bval) == NAMESPACE_DECL
	   && FUNC6 (decl)
	   && FUNC6 (bval)
	   && FUNC7 (bval) == FUNC7 (decl))
    /* [namespace.alias]

      In a declarative region, a namespace-alias-definition can be
      used to redefine a namespace-alias declared in that declarative
      region to refer only to the namespace to which it already
      refers.  */
    ok = false;
  else
    {
      FUNC12 ("declaration of %q#D", decl);
      FUNC12 ("conflicts with previous declaration %q+#D", bval);
      ok = false;
    }

  FUNC8 (TV_NAME_LOOKUP, ok);
}