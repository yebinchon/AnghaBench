#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct cgraph_varpool_node {int externally_visible; scalar_t__ finalized; int /*<<< orphan*/  decl; struct cgraph_varpool_node* next; } ;
struct TYPE_2__ {int externally_visible; scalar_t__ finalized; } ;
struct cgraph_node {TYPE_1__ local; int /*<<< orphan*/  decl; struct cgraph_node* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPT_Wattributes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cgraph_node*) ; 
 struct cgraph_node* cgraph_nodes ; 
 int /*<<< orphan*/  FUNC3 (struct cgraph_varpool_node*) ; 
 struct cgraph_varpool_node* cgraph_varpool_nodes ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (struct cgraph_node *first,
                                          struct cgraph_varpool_node *first_var)
{
  struct cgraph_node *node;
  struct cgraph_varpool_node *vnode;

  for (node = cgraph_nodes; node != first; node = node->next)
    {
      tree decl = node->decl;
      if (FUNC4 ("used", FUNC0 (decl)))
	{
	  FUNC5 (decl);
	  if (node->local.finalized)
	     FUNC2 (node);
	}
      if (FUNC4 ("externally_visible", FUNC0 (decl)))
	{
	  if (! FUNC1 (node->decl))
	    FUNC6 (OPT_Wattributes,
		     "%J%<externally_visible%> attribute have effect only on public objects",
		     node->decl);
	  else
	    {
	      if (node->local.finalized)
		FUNC2 (node);
	      node->local.externally_visible = true;
	    }
	}
    }
  for (vnode = cgraph_varpool_nodes; vnode != first_var; vnode = vnode->next)
    {
      tree decl = vnode->decl;
      if (FUNC4 ("used", FUNC0 (decl)))
	{
	  FUNC5 (decl);
	  if (vnode->finalized)
	    FUNC3 (vnode);
	}
      if (FUNC4 ("externally_visible", FUNC0 (decl)))
	{
	  if (! FUNC1 (vnode->decl))
	    FUNC6 (OPT_Wattributes,
		     "%J%<externally_visible%> attribute have effect only on public objects",
		     vnode->decl);
	  else
	    {
	      if (vnode->finalized)
		FUNC3 (vnode);
	      vnode->externally_visible = true;
	    }
	}
    }
}