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
typedef  int /*<<< orphan*/ * tree ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNCTION_DECL ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ TYPE_DECL ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * global_namespace ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18 (tree decl, const int ignore_local_scope)
{
  tree context;

  FUNC3 ("name", decl);

  if (FUNC6 (decl) == TYPE_DECL)
    {
      /* In case this is a typedef, fish out the corresponding
	 TYPE_DECL for the main variant.  */
      decl = FUNC10 (FUNC9 (FUNC7 (decl)));
      context = FUNC8 (FUNC9 (FUNC7 (decl)));
    }
  else
    context = (FUNC1 (decl) == NULL) ? NULL : FUNC0 (decl);

  /* A decl in :: or ::std scope is treated specially.  The former is
     mangled using <unscoped-name> or <unscoped-template-name>, the
     latter with a special substitution.  Also, a name that is
     directly in a local function scope is also mangled with
     <unscoped-name> rather than a full <nested-name>.  */
  if (context == NULL
      || context == global_namespace
      || FUNC2 (context)
      || (ignore_local_scope && FUNC6 (context) == FUNCTION_DECL))
    {
      tree template_info;
      /* Is this a template instance?  */
      if (FUNC12 (decl, &template_info))
	{
	  /* Yes: use <unscoped-template-name>.  */
	  FUNC17 (FUNC5 (template_info));
	  FUNC15 (FUNC4 (template_info));
	}
      else
	/* Everything else gets an <unqualified-name>.  */
	FUNC16 (decl);
    }
  else
    {
      /* Handle local names, unless we asked not to (that is, invoked
	 under <local-name>, to handle only the part of the name under
	 the local scope).  */
      if (!ignore_local_scope)
	{
	  /* Scan up the list of scope context, looking for a
	     function.  If we find one, this entity is in local
	     function scope.  local_entity tracks context one scope
	     level down, so it will contain the element that's
	     directly in that function's scope, either decl or one of
	     its enclosing scopes.  */
	  tree local_entity = decl;
	  while (context != NULL && context != global_namespace)
	    {
	      /* Make sure we're always dealing with decls.  */
	      if (context != NULL && FUNC11 (context))
		context = FUNC10 (context);
	      /* Is this a function?  */
	      if (FUNC6 (context) == FUNCTION_DECL)
		{
		  /* Yes, we have local scope.  Use the <local-name>
		     production for the innermost function scope.  */
		  FUNC13 (context, local_entity, decl);
		  return;
		}
	      /* Up one scope level.  */
	      local_entity = context;
	      context = FUNC0 (context);
	    }

	  /* No local scope found?  Fall through to <nested-name>.  */
	}

      /* Other decls get a <nested-name> to encode their scope.  */
      FUNC14 (decl);
    }
}