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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ NAMESPACE_DECL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ SCOPE_REF ; 
 scalar_t__ TEMPLATE_ID_EXPR ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static tree
FUNC9 (tree decl, tree scope, tree name)
{
  /* [namespace.udecl]
       A using-declaration for a class member shall be a
       member-declaration.  */
  if (FUNC3 (scope))
    {
      FUNC4 ("%qT is not a namespace", scope);
      return NULL_TREE;
    }
  else if (scope == error_mark_node)
    return NULL_TREE;

  if (FUNC1 (decl) == TEMPLATE_ID_EXPR)
    {
      /* 7.3.3/5
	   A using-declaration shall not name a template-id.  */
      FUNC4 ("a using-declaration cannot specify a template-id.  "
	     "Try %<using %D%>", name);
      return NULL_TREE;
    }

  if (FUNC1 (decl) == NAMESPACE_DECL)
    {
      FUNC4 ("namespace %qD not allowed in using-declaration", decl);
      return NULL_TREE;
    }

  if (FUNC1 (decl) == SCOPE_REF)
    {
      /* It's a nested name with template parameter dependent scope.
	 This can only be using-declaration for class member.  */
      FUNC4 ("%qT is not a namespace", FUNC2 (decl, 0));
      return NULL_TREE;
    }

  if (FUNC7 (decl))
    decl = FUNC6 (decl);

  FUNC5 (FUNC0 (decl));

  /* Make a USING_DECL.  */
  return FUNC8 (scope, name);
}