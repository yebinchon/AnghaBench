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
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,int,int) ; 

tree
FUNC3 (tree xbasetype, tree name, int protect, bool want_type)
{
  tree rval = FUNC2 (xbasetype, name, protect, want_type);

  /* Ignore functions, but propagate the ambiguity list.  */
  if (!FUNC1 (rval)
      && (rval && FUNC0 (rval)))
    return NULL_TREE;

  return rval;
}