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
typedef  scalar_t__ access_kind ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ ak_protected ; 
 scalar_t__ ak_public ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ current_class_type ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  dfs_accessible_post ; 
 scalar_t__ FUNC7 (scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (scalar_t__,scalar_t__,scalar_t__) ; 
 int processing_template_decl ; 
 int /*<<< orphan*/  processing_template_parmlist ; 
 int FUNC9 (scalar_t__,scalar_t__,scalar_t__) ; 

int
FUNC10 (tree type, tree decl, bool consider_local_p)
{
  tree binfo;
  tree scope;
  access_kind access;

  /* Nonzero if it's OK to access DECL if it has protected
     accessibility in TYPE.  */
  int protected_ok = 0;

  /* If this declaration is in a block or namespace scope, there's no
     access control.  */
  if (!FUNC3 (FUNC5 (decl)))
    return 1;

  /* There is no need to perform access checks inside a thunk.  */
  scope = FUNC6 ();
  if (scope && FUNC1 (scope))
    return 1;

  /* In a template declaration, we cannot be sure whether the
     particular specialization that is instantiated will be a friend
     or not.  Therefore, all access checks are deferred until
     instantiation.  However, PROCESSING_TEMPLATE_DECL is set in the
     parameter list for a template (because we may see dependent types
     in default arguments for template parameters), and access
     checking should be performed in the outermost parameter list.  */
  if (processing_template_decl
      && (!processing_template_parmlist || processing_template_decl > 1))
    return 1;

  if (!FUNC3 (type))
    {
      binfo = type;
      type = FUNC0 (type);
    }
  else
    binfo = FUNC2 (type);

  /* [class.access.base]

     A member m is accessible when named in class N if

     --m as a member of N is public, or

     --m as a member of N is private, and the reference occurs in a
       member or friend of class N, or

     --m as a member of N is protected, and the reference occurs in a
       member or friend of class N, or in a member or friend of a
       class P derived from N, where m as a member of P is private or
       protected, or

     --there exists a base class B of N that is accessible at the point
       of reference, and m is accessible when named in class B.

    We walk the base class hierarchy, checking these conditions.  */

  if (consider_local_p)
    {
      /* Figure out where the reference is occurring.  Check to see if
	 DECL is private or protected in this scope, since that will
	 determine whether protected access is allowed.  */
      if (current_class_type)
	protected_ok = FUNC9 (decl,
					       current_class_type, binfo);

      /* Now, loop through the classes of which we are a friend.  */
      if (!protected_ok)
	protected_ok = FUNC8 (scope, decl, binfo);
    }

  /* Standardize the binfo that access_in_type will use.  We don't
     need to know what path was chosen from this point onwards.  */
  binfo = FUNC2 (type);

  /* Compute the accessibility of DECL in the class hierarchy
     dominated by type.  */
  access = FUNC4 (type, decl);
  if (access == ak_public
      || (access == ak_protected && protected_ok))
    return 1;

  if (!consider_local_p)
    return 0;

  /* Walk the hierarchy again, looking for a base class that allows
     access.  */
  return FUNC7 (binfo, /*friends=*/true,
				   NULL, dfs_accessible_post, NULL)
    != NULL_TREE;
}