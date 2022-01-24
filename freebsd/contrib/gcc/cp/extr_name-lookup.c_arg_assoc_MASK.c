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
struct arg_lookup {int dummy; } ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ BASELINK ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ COMPONENT_REF ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ NAMESPACE_DECL ; 
 scalar_t__ OFFSET_REF ; 
 scalar_t__ OVERLOAD ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ TEMPLATE_ID_EXPR ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ TREE_LIST ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int) ; 
 int FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int FUNC12 (struct arg_lookup*,scalar_t__) ; 
 int FUNC13 (struct arg_lookup*,scalar_t__) ; 
 int FUNC14 (struct arg_lookup*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct arg_lookup*,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC17 (struct arg_lookup *k, tree n)
{
  if (n == error_mark_node)
    return false;

  if (FUNC11 (n))
    return FUNC15 (k, n);

  if (! FUNC16 (n))
    return FUNC15 (k, FUNC7 (n));

  if (FUNC5 (n) == ADDR_EXPR)
    n = FUNC6 (n, 0);
  if (FUNC5 (n) == COMPONENT_REF)
    n = FUNC6 (n, 1);
  if (FUNC5 (n) == OFFSET_REF)
    n = FUNC6 (n, 1);
  while (FUNC5 (n) == TREE_LIST)
    n = FUNC8 (n);
  if (FUNC5 (n) == BASELINK)
    n = FUNC0 (n);

  if (FUNC5 (n) == FUNCTION_DECL)
    return FUNC15 (k, FUNC7 (n));
  if (FUNC5 (n) == TEMPLATE_ID_EXPR)
    {
      /* [basic.lookup.koenig]

	 If T is a template-id, its associated namespaces and classes
	 are the namespace in which the template is defined; for
	 member templates, the member template's class...  */
      tree template = FUNC6 (n, 0);
      tree args = FUNC6 (n, 1);
      tree ctx;
      int ix;

      if (FUNC5 (template) == COMPONENT_REF)
	template = FUNC6 (template, 1);

      /* First, the template.  There may actually be more than one if
	 this is an overloaded function template.  But, in that case,
	 we only need the first; all the functions will be in the same
	 namespace.  */
      template = FUNC3 (template);

      ctx = FUNC1 (template);

      if (FUNC5 (ctx) == NAMESPACE_DECL)
	{
	  if (FUNC13 (k, ctx) == 1)
	    return true;
	}
      /* It must be a member template.  */
      else if (FUNC12 (k, ctx) == 1)
	return true;

      /* Now the arguments.  */
      if (args)
	for (ix = FUNC10 (args); ix--;)
	  if (FUNC14 (k, FUNC9 (args, ix)) == 1)
	    return true;
    }
  else if (FUNC5 (n) == OVERLOAD)
    {
      for (; n; n = FUNC2 (n))
	if (FUNC15 (k, FUNC7 (FUNC4 (n))))
	  return true;
    }

  return false;
}