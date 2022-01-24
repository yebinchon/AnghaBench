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
typedef  int /*<<< orphan*/  location_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  OPT_Wstrict_aliasing ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC19 (tree alias_site,
                      tree object1, bool is_ptr1,
                      tree object2, bool is_ptr2,
		      bool filter_artificials)
{
  tree ref_site1 = NULL_TREE;
  tree ref_site2 = NULL_TREE;
  const char *name1;
  const char *name2;
  location_t alias_loc;
  location_t ref1_loc;
  location_t ref2_loc;
  FUNC10 (object1);
  FUNC10 (object2);

  if (FUNC7 (object1)
      || FUNC7 (object2))
    return false;

  name1 = FUNC15 (object1);
  name2 = FUNC15 (object2);

  if (FUNC16 (FUNC11 (FUNC5 (object2))))
    return false;

  FUNC17 (object1, is_ptr1, object2, is_ptr2, &alias_site,
                            &ref_site1, &ref_site2);

  if (!alias_site)
    return false;

  if (FUNC0 (alias_site))
    alias_loc = FUNC1 (alias_site);
  else
    return false;

  if (FUNC0 (ref_site1))
    ref1_loc = FUNC1 (ref_site1);
  else
    ref1_loc = alias_loc;

  if (FUNC0 (ref_site2))
    ref2_loc = FUNC1 (ref_site2);
  else
    ref2_loc = alias_loc;

  if (FUNC6 (alias_site))
    return false;

  /* If they are not SSA names, but contain SSA names, drop the warning
     because it cannot be displayed well.
     Also drop it if they both contain artificials.
     XXX: this is a hack, must figure out a better way to display them.  */
  if (filter_artificials)
    if ((FUNC9 (FUNC14 (object1))
	 && FUNC9 (FUNC14 (object2)))
	|| (FUNC4 (object1) != SSA_NAME
	    && FUNC8 (object1, SSA_NAME))
	|| (FUNC4 (object2) != SSA_NAME
	    && FUNC8 (object2, SSA_NAME)))
      return false;

  /* XXX: In the following format string, %s:%d should be replaced by %H.
     However, in my tests only the first %H printed ok, while the
     second and third were printed as blanks.  */
  FUNC18 (OPT_Wstrict_aliasing,
	   "%Hlikely type-punning may break strict-aliasing rules: "
	   "object %<%s%s%> of main type %qT is referenced at or around "
	   "%s:%d and may be "
	   "aliased to object %<%s%s%> of main type %qT which is referenced "
	   "at or around %s:%d.",
	   &alias_loc,
	   FUNC12 (object1, is_ptr1),
	   name1, FUNC13 (object1, is_ptr1),
	   FUNC2 (ref1_loc), FUNC3 (ref1_loc),
	   FUNC12 (object2, is_ptr2),
	   name2, FUNC13 (object2, is_ptr2),
	   FUNC2 (ref2_loc), FUNC3 (ref2_loc));

  return true;
}