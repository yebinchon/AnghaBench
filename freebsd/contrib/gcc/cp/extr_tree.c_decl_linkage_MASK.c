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
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  linkage_kind ;

/* Variables and functions */
 scalar_t__ CONST_DECL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ NAMESPACE_DECL ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_DECL ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lk_external ; 
 int /*<<< orphan*/  lk_internal ; 
 int /*<<< orphan*/  lk_none ; 

linkage_kind
FUNC9 (tree decl)
{
  /* This function doesn't attempt to calculate the linkage from first
     principles as given in [basic.link].  Instead, it makes use of
     the fact that we have already set TREE_PUBLIC appropriately, and
     then handles a few special cases.  Ideally, we would calculate
     linkage first, and then transform that into a concrete
     implementation.  */

  /* Things that don't have names have no linkage.  */
  if (!FUNC2 (decl))
    return lk_none;

  /* Things that are TREE_PUBLIC have external linkage.  */
  if (FUNC5 (decl))
    return lk_external;

  if (FUNC4 (decl) == NAMESPACE_DECL)
    return lk_external;

  /* Linkage of a CONST_DECL depends on the linkage of the enumeration
     type.  */
  if (FUNC4 (decl) == CONST_DECL)
    return FUNC9 (FUNC7 (FUNC6 (decl)));

  /* Some things that are not TREE_PUBLIC have external linkage, too.
     For example, on targets that don't have weak symbols, we make all
     template instantiations have internal linkage (in the object
     file), but the symbols should still be treated as having external
     linkage from the point of view of the language.  */
  if (FUNC4 (decl) != TYPE_DECL && FUNC1 (decl)
      && FUNC0 (decl))
    return lk_external;

  /* Things in local scope do not have linkage, if they don't have
     TREE_PUBLIC set.  */
  if (FUNC8 (decl))
    return lk_none;

  /* Members of the anonymous namespace also have TREE_PUBLIC unset, but
     are considered to have external linkage for language purposes.  DECLs
     really meant to have internal linkage have DECL_THIS_STATIC set.  */
  if (FUNC4 (decl) == TYPE_DECL
      || ((FUNC4 (decl) == VAR_DECL || FUNC4 (decl) == FUNCTION_DECL)
	  && !FUNC3 (decl)))
    return lk_external;

  /* Everything else has internal linkage.  */
  return lk_internal;
}