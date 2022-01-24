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
typedef  scalar_t__ tag_scope ;
typedef  enum tag_types { ____Placeholder_tag_types } tag_types ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ TREE_LIST ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ FUNC4 (int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ ts_current ; 
 scalar_t__ ts_global ; 
 scalar_t__ ts_within_enclosing_non_class ; 

__attribute__((used)) static tree
FUNC9 (enum tag_types tag_code, tree name,
		      tag_scope scope, bool template_header_p)
{
  tree t;
  tree decl;
  if (scope == ts_global)
    {
      /* First try ordinary name lookup, ignoring hidden class name
	 injected via friend declaration.  */
      decl = FUNC6 (name, 2);
      /* If that fails, the name will be placed in the smallest
	 non-class, non-function-prototype scope according to 3.3.1/5.
	 We may already have a hidden name declared as friend in this
	 scope.  So lookup again but not ignoring hidden names.
	 If we find one, that name will be made visible rather than
	 creating a new tag.  */
      if (!decl)
	decl = FUNC7 (name, ts_within_enclosing_non_class);
    }
  else
    decl = FUNC7 (name, scope);

  if (decl && FUNC0 (decl))
    decl = FUNC2 (decl);

  if (decl && FUNC3 (decl) == TYPE_DECL)
    {
      /* Look for invalid nested type:
	   class C {
	     class C {};
	   };  */
      if (scope == ts_current && FUNC1 (decl))
	{
	  FUNC5 ("%qD has the same name as the class in which it is "
		 "declared",
		 decl);
	  return error_mark_node;
	}

      /* Two cases we need to consider when deciding if a class
	 template is allowed as an elaborated type specifier:
	 1. It is a self reference to its own class.
	 2. It comes with a template header.

	 For example:

	   template <class T> class C {
	     class C *c1;		// DECL_SELF_REFERENCE_P is true
	     class D;
	   };
	   template <class U> class C; // template_header_p is true
	   template <class T> class C<T>::D {
	     class C *c2;		// DECL_SELF_REFERENCE_P is true
	   };  */

      t = FUNC4 (tag_code,
					   decl,
					   template_header_p
					   | FUNC1 (decl));
      return t;
    }
  else if (decl && FUNC3 (decl) == TREE_LIST)
    {
      FUNC5 ("reference to %qD is ambiguous", name);
      FUNC8 (decl);
      return error_mark_node;
    }
  else
    return NULL_TREE;
}