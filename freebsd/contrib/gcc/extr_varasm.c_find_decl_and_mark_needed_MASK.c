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
struct cgraph_varpool_node {int /*<<< orphan*/  decl; } ;
struct cgraph_node {int /*<<< orphan*/  decl; } ;

/* Variables and functions */
 scalar_t__ FUNCTION_DECL ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cgraph_global_info_ready ; 
 int /*<<< orphan*/  FUNC1 (struct cgraph_node*) ; 
 struct cgraph_node* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cgraph_varpool_node*) ; 
 struct cgraph_varpool_node* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC5 (tree decl, tree target)
{
  struct cgraph_node *fnode = NULL;
  struct cgraph_varpool_node *vnode = NULL;

  if (FUNC0 (decl) == FUNCTION_DECL)
    {
      fnode = FUNC2 (target);
      if (fnode == NULL)
	vnode = FUNC4 (target);
    }
  else
    {
      vnode = FUNC4 (target);
      if (vnode == NULL)
	fnode = FUNC2 (target);
    }

  if (fnode)
    {
      /* We can't mark function nodes as used after cgraph global info
	 is finished.  This wouldn't generally be necessary, but C++
	 virtual table thunks are introduced late in the game and
	 might seem like they need marking, although in fact they
	 don't.  */
      if (! cgraph_global_info_ready)
	FUNC1 (fnode);
      return fnode->decl;
    }
  else if (vnode)
    {
      FUNC3 (vnode);
      return vnode->decl;
    }
  else
    return NULL_TREE;
}