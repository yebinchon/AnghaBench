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
typedef  int /*<<< orphan*/  access_kind ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dfs_access_in_type ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static access_kind
FUNC3 (tree type, tree decl)
{
  tree binfo = FUNC1 (type);

  /* We must take into account

       [class.paths]

       If a name can be reached by several paths through a multiple
       inheritance graph, the access is that of the path that gives
       most access.

    The algorithm we use is to make a post-order depth-first traversal
    of the base-class hierarchy.  As we come up the tree, we annotate
    each node with the most lenient access.  */
  FUNC2 (binfo, NULL, dfs_access_in_type, decl);

  return FUNC0 (binfo);
}