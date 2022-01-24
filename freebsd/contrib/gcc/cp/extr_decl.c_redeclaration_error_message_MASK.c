#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ TEMPLATE_DECL ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 () ; 

__attribute__((used)) static const char *
FUNC19 (tree newdecl, tree olddecl)
{
  if (FUNC13 (newdecl) == TYPE_DECL)
    {
      /* Because C++ can put things into name space for free,
	 constructs like "typedef struct foo { ... } foo"
	 would look like an erroneous redeclaration.  */
      if (FUNC16 (FUNC14 (newdecl), FUNC14 (olddecl)))
	return NULL;
      else
	return "redefinition of %q#D";
    }
  else if (FUNC13 (newdecl) == FUNCTION_DECL)
    {
      /* If this is a pure function, its olddecl will actually be
	 the original initialization to `0' (which we force to call
	 abort()).  Don't complain about redefinition in this case.  */
      if (FUNC6 (olddecl) && FUNC9 (olddecl)
	  && FUNC5 (olddecl) == NULL_TREE)
	return NULL;

      /* If both functions come from different namespaces, this is not
	 a redeclaration - this is a conflict with a used function.  */
      if (FUNC8 (olddecl)
	  && FUNC3 (olddecl) != FUNC3 (newdecl)
	  && ! FUNC15 (olddecl, newdecl))
	return "%qD conflicts with used function";

      /* We'll complain about linkage mismatches in
	 warn_extern_redeclared_static.  */

      /* Defining the same name twice is no good.  */
      if (FUNC5 (olddecl) != NULL_TREE
	  && FUNC5 (newdecl) != NULL_TREE)
	{
	  if (FUNC7 (olddecl) == NULL_TREE)
	    return "%q#D not declared in class";
	  else
	    return "redefinition of %q#D";
	}
      return NULL;
    }
  else if (FUNC13 (newdecl) == TEMPLATE_DECL)
    {
      tree nt, ot;

      if (FUNC13 (FUNC11 (newdecl)) == TYPE_DECL)
	{
	  if (FUNC0 (FUNC14 (newdecl))
	      && FUNC0 (FUNC14 (olddecl)))
	    return "redefinition of %q#D";
	  return NULL;
	}

      if (FUNC13 (FUNC11 (newdecl)) != FUNCTION_DECL
	  || (FUNC11 (newdecl)
	      == FUNC11 (olddecl)))
	return NULL;

      nt = FUNC11 (newdecl);
      if (FUNC10 (nt))
	nt = FUNC11 (FUNC17 (nt));
      ot = FUNC11 (olddecl);
      if (FUNC10 (ot))
	ot = FUNC11 (FUNC17 (ot));
      if (FUNC5 (nt) && FUNC5 (ot))
	return "redefinition of %q#D";

      return NULL;
    }
  else if (FUNC13 (newdecl) == VAR_DECL
	   && FUNC12 (newdecl) != FUNC12 (olddecl)
	   && (! FUNC6 (olddecl)
	       || ! FUNC1 (olddecl)
	       || FUNC12 (newdecl)))
    {
      /* Only variables can be thread-local, and all declarations must
	 agree on this property.  */
      if (FUNC12 (newdecl))
	return "thread-local declaration of %q#D follows "
	       "non-thread-local declaration";
      else
	return "non-thread-local declaration of %q#D follows "
	       "thread-local declaration";
    }
  else if (FUNC18 () || FUNC8 (newdecl))
    {
      /* The objects have been declared at namespace scope.  If either
	 is a member of an anonymous union, then this is an invalid
	 redeclaration.  For example:

	   int i;
	   union { int i; };

	   is invalid.  */
      if (FUNC2 (newdecl)
	  || FUNC2 (olddecl))
	return "redeclaration of %q#D";
      /* If at least one declaration is a reference, there is no
	 conflict.  For example:

	   int i = 3;
	   extern int i;

	 is valid.  */
      if (FUNC4 (newdecl) || FUNC4 (olddecl))
	return NULL;
      /* Reject two definitions.  */
      return "redefinition of %q#D";
    }
  else
    {
      /* Objects declared with block scope:  */
      /* Reject two definitions, and reject a definition
	 together with an external reference.  */
      if (!(FUNC4 (newdecl) && FUNC4 (olddecl)))
	return "redeclaration of %q#D";
      return NULL;
    }
}