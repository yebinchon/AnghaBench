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
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ dfs_skip_bases ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__*,unsigned int) ; 

__attribute__((used)) static tree
FUNC12 (tree binfo, void* data)
{
  tree t = (tree) data;
  tree virtuals;
  tree old_virtuals;
  unsigned ix;

  if (!FUNC9 (FUNC1 (binfo)))
    /* A base without a vtable needs no modification, and its bases
       are uninteresting.  */
    return dfs_skip_bases;

  if (FUNC6 (FUNC1 (binfo), t)
      && !FUNC5 (t))
    /* Don't do the primary vtable, if it's new.  */
    return NULL_TREE;

  if (FUNC0 (binfo) && !FUNC3 (binfo))
    /* There's no need to modify the vtable for a non-virtual primary
       base; we're not going to use that vtable anyhow.  We do still
       need to do this for virtual primary bases, as they could become
       non-primary in a construction vtable.  */
    return NULL_TREE;

  FUNC10 (t, binfo);

  /* Now, go through each of the virtual functions in the virtual
     function table for BINFO.  Find the final overrider, and update
     the BINFO_VIRTUALS list appropriately.  */
  for (ix = 0, virtuals = FUNC2 (binfo),
	 old_virtuals = FUNC2 (FUNC8 (FUNC1 (binfo)));
       virtuals;
       ix++, virtuals = FUNC7 (virtuals),
	 old_virtuals = FUNC7 (old_virtuals))
    FUNC11 (t,
				binfo,
				FUNC4 (old_virtuals),
				&virtuals, ix);

  return NULL_TREE;
}