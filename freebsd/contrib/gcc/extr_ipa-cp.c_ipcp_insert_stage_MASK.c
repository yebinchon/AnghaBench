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
typedef  int /*<<< orphan*/  varray_type ;
typedef  union parameter_info {int dummy; } parameter_info ;
typedef  int /*<<< orphan*/  tree ;
struct ipa_replace_map {int dummy; } ;
struct cgraph_node {struct cgraph_edge* callers; struct cgraph_node* next; } ;
struct cgraph_edge {struct cgraph_edge* next_caller; } ;
typedef  enum cvalue_type { ____Placeholder_cvalue_type } cvalue_type ;

/* Variables and functions */
 int CONST_VALUE_REF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ipa_replace_map*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,struct cgraph_edge*) ; 
 int /*<<< orphan*/  cgraph_edge_p ; 
 struct cgraph_node* FUNC8 (struct cgraph_node*,int,int /*<<< orphan*/ ) ; 
 char* FUNC9 (struct cgraph_node*) ; 
 struct cgraph_node* cgraph_nodes ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  heap ; 
 int FUNC11 (struct cgraph_node*) ; 
 int /*<<< orphan*/  FUNC12 (struct cgraph_node*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct cgraph_node*,struct cgraph_node*) ; 
 union parameter_info* FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct cgraph_node*,int) ; 
 scalar_t__ FUNC17 (struct cgraph_node*) ; 
 int /*<<< orphan*/  FUNC18 (struct cgraph_node*,int,union parameter_info*,int) ; 
 struct ipa_replace_map* FUNC19 (int,int /*<<< orphan*/ ,union parameter_info*) ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int redirect_callers ; 

__attribute__((used)) static void
FUNC23 (void)
{
  struct cgraph_node *node, *node1 = NULL;
  int i, const_param;
  union parameter_info *cvalue;
  FUNC4(cgraph_edge_p,heap) *redirect_callers;
  varray_type replace_trees;
  struct cgraph_edge *cs;
  int node_callers, count;
  tree parm_tree;
  enum cvalue_type type;
  struct ipa_replace_map *replace_param;

  for (node = cgraph_nodes; node; node = node->next)
    {
      /* Propagation of the constant is forbidden in 
         certain conditions.  */
      if (FUNC17 (node))
	continue;
      const_param = 0;
      count = FUNC11 (node);
      for (i = 0; i < count; i++)
	{
	  type = FUNC15 (FUNC16 (node, i));
	  if (FUNC20 (type))
	    const_param++;
	}
      if (const_param == 0)
	continue;
      FUNC2 (replace_trees, const_param, "replace_trees");
      for (i = 0; i < count; i++)
	{
	  type = FUNC15 (FUNC16 (node, i));
	  if (FUNC20 (type))
	    {
	      cvalue = FUNC14 (FUNC16 (node, i));
	      parm_tree = FUNC12 (node, i);
	      replace_param =
		FUNC19 (type, parm_tree, cvalue);
	      FUNC3 (replace_trees, replace_param);
	    }
	}
      /* Compute how many callers node has.  */
      node_callers = 0;
      for (cs = node->callers; cs != NULL; cs = cs->next_caller)
	node_callers++;
      redirect_callers = FUNC5 (cgraph_edge_p, heap, node_callers);
      for (cs = node->callers; cs != NULL; cs = cs->next_caller)
	FUNC7 (cgraph_edge_p, redirect_callers, cs);
      /* Redirecting all the callers of the node to the
         new versioned node.  */
      node1 =
	FUNC8 (node, redirect_callers, replace_trees);
      FUNC6 (cgraph_edge_p, heap, redirect_callers);
      FUNC1 (replace_trees);
      if (node1 == NULL)
	continue;
      if (dump_file)
	FUNC10 (dump_file, "versioned function %s\n",
		 FUNC9 (node));
      FUNC13 (node, node1);
      for (i = 0; i < count; i++)
	{
	  type = FUNC15 (FUNC16 (node, i));
	  if (FUNC20 (type))
	    {
	      cvalue = FUNC14 (FUNC16 (node, i));
	      parm_tree = FUNC12 (node, i);
	      if (type != CONST_VALUE_REF 
		  && !FUNC0 (parm_tree))
		FUNC18 (node1, i, cvalue, type);
	    }
	}
    }
  FUNC21 ();
  FUNC22 ();
}