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
 scalar_t__ ARRAY_TYPE ; 
 scalar_t__ BOUND_TEMPLATE_TEMPLATE_PARM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNCTION_TYPE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ METHOD_TYPE ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ REFERENCE_TYPE ; 
 scalar_t__ TEMPLATE_TEMPLATE_PARM ; 
 scalar_t__ TEMPLATE_TYPE_PARM ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ TYPENAME_TYPE ; 
 scalar_t__ TYPEOF_TYPE ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (scalar_t__) ; 
 int FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC21 (tree type)
{
  tree scope;

  /* [temp.dep.type]

     A type is dependent if it is:

     -- a template parameter. Template template parameters are types
	for us (since TYPE_P holds true for them) so we handle
	them here.  */
  if (FUNC5 (type) == TEMPLATE_TYPE_PARM
      || FUNC5 (type) == TEMPLATE_TEMPLATE_PARM)
    return true;
  /* -- a qualified-id with a nested-name-specifier which contains a
	class-name that names a dependent type or whose unqualified-id
	names a dependent type.  */
  if (FUNC5 (type) == TYPENAME_TYPE)
    return true;
  /* -- a cv-qualified type where the cv-unqualified type is
	dependent.  */
  type = FUNC11 (type);
  /* -- a compound type constructed from any dependent type.  */
  if (FUNC16 (type))
    return (FUNC18 (FUNC14 (type))
	    || FUNC18 (FUNC15
					   (type)));
  else if (FUNC5 (type) == POINTER_TYPE
	   || FUNC5 (type) == REFERENCE_TYPE)
    return FUNC18 (FUNC6 (type));
  else if (FUNC5 (type) == FUNCTION_TYPE
	   || FUNC5 (type) == METHOD_TYPE)
    {
      tree arg_type;

      if (FUNC18 (FUNC6 (type)))
	return true;
      for (arg_type = FUNC8 (type);
	   arg_type;
	   arg_type = FUNC4 (arg_type))
	if (FUNC18 (FUNC7 (arg_type)))
	  return true;
      return false;
    }
  /* -- an array type constructed from any dependent type or whose
	size is specified by a constant expression that is
	value-dependent.  */
  if (FUNC5 (type) == ARRAY_TYPE)
    {
      if (FUNC10 (type)
	  && ((FUNC20
	       (FUNC12 (FUNC10 (type))))
	      || (FUNC19
		  (FUNC12 (FUNC10 (type))))))
	return true;
      return FUNC18 (FUNC6 (type));
    }

  /* -- a template-id in which either the template name is a template
     parameter ...  */
  if (FUNC5 (type) == BOUND_TEMPLATE_TEMPLATE_PARM)
    return true;
  /* ... or any of the template arguments is a dependent type or
	an expression that is type-dependent or value-dependent.  */
  else if (FUNC2 (type) && FUNC0 (type)
	   && (FUNC17
	       (FUNC3 (FUNC1 (type)))))
    return true;

  /* All TYPEOF_TYPEs are dependent; if the argument of the `typeof'
     expression is not type-dependent, then it should already been
     have resolved.  */
  if (FUNC5 (type) == TYPEOF_TYPE)
    return true;

  /* The standard does not specifically mention types that are local
     to template functions or local classes, but they should be
     considered dependent too.  For example:

       template <int I> void f() {
	 enum E { a = I };
	 S<sizeof (E)> s;
       }

     The size of `E' cannot be known until the value of `I' has been
     determined.  Therefore, `E' must be considered dependent.  */
  scope = FUNC9 (type);
  if (scope && FUNC13 (scope))
    return FUNC18 (scope);
  else if (scope && FUNC5 (scope) == FUNCTION_DECL)
    return FUNC19 (scope);

  /* Other types are non-dependent.  */
  return false;
}