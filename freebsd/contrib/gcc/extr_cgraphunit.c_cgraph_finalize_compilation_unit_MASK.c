#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct cgraph_varpool_node {int dummy; } ;
struct TYPE_3__ {scalar_t__ finalized; } ;
struct cgraph_node {scalar_t__ analyzed; TYPE_1__ local; struct cgraph_node* next_needed; scalar_t__ reachable; struct cgraph_node* next; int /*<<< orphan*/  decl; scalar_t__ needed; struct cgraph_edge* callees; } ;
struct cgraph_edge {TYPE_2__* callee; struct cgraph_edge* next_callee; } ;
struct TYPE_4__ {int /*<<< orphan*/  reachable; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TV_CGRAPH ; 
 int /*<<< orphan*/  FUNC1 (struct cgraph_node*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ cgraph_dump_file ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 char* FUNC4 (struct cgraph_node*) ; 
 struct cgraph_node* cgraph_nodes ; 
 struct cgraph_node* cgraph_nodes_queue ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct cgraph_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct cgraph_node*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct cgraph_varpool_node* cgraph_varpool_nodes ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ errorcount ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  flag_unit_at_a_time ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct cgraph_node*,struct cgraph_varpool_node*) ; 
 int /*<<< orphan*/  quiet_flag ; 
 scalar_t__ sorrycount ; 
 scalar_t__ stderr ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

void
FUNC19 (void)
{
  struct cgraph_node *node, *next;
  /* Keep track of already processed nodes when called multiple times for
     intermodule optimization.  */
  static struct cgraph_node *first_analyzed;
  struct cgraph_node *first_processed = first_analyzed;
  static struct cgraph_varpool_node *first_analyzed_var;

  if (errorcount || sorrycount)
    return;

  FUNC12 ();

  if (!flag_unit_at_a_time)
    {
      FUNC5 ();
      FUNC2 ();
      FUNC9 ();
      return;
    }

  if (!quiet_flag)
    {
      FUNC13 (stderr, "\nAnalyzing compilation unit");
      FUNC11 (stderr);
    }

  FUNC18 (TV_CGRAPH);
  FUNC16 (first_processed,
					    first_analyzed_var);
  first_processed = cgraph_nodes;
  first_analyzed_var = cgraph_varpool_nodes;
  FUNC8 ();
  if (cgraph_dump_file)
    {
      FUNC13 (cgraph_dump_file, "Initial entry points:");
      for (node = cgraph_nodes; node != first_analyzed; node = node->next)
	if (node->needed && FUNC0 (node->decl))
	  FUNC13 (cgraph_dump_file, " %s", FUNC4 (node));
      FUNC13 (cgraph_dump_file, "\n");
    }

  /* Propagate reachability flag and lower representation of all reachable
     functions.  In the future, lowering will introduce new functions and
     new entry points on the way (by template instantiation and virtual
     method table generation for instance).  */
  while (cgraph_nodes_queue)
    {
      struct cgraph_edge *edge;
      tree decl = cgraph_nodes_queue->decl;

      node = cgraph_nodes_queue;
      cgraph_nodes_queue = cgraph_nodes_queue->next_needed;
      node->next_needed = NULL;

      /* ??? It is possible to create extern inline function and later using
	 weak alias attribute to kill its body. See
	 gcc.c-torture/compile/20011119-1.c  */
      if (!FUNC0 (decl))
	{
	  FUNC7 (node);
	  continue;
	}

      FUNC14 (!node->analyzed && node->reachable);
      FUNC14 (FUNC0 (decl));

      FUNC1 (node);

      for (edge = node->callees; edge; edge = edge->next_callee)
	if (!edge->callee->reachable)
	  FUNC3 (edge->callee);

      /* We finalize local static variables during constructing callgraph
         edges.  Process their attributes too.  */
      FUNC16 (first_processed,
						first_analyzed_var);
      first_processed = cgraph_nodes;
      first_analyzed_var = cgraph_varpool_nodes;
      FUNC8 ();
    }

  /* Collect entry points to the unit.  */
  if (cgraph_dump_file)
    {
      FUNC13 (cgraph_dump_file, "Unit entry points:");
      for (node = cgraph_nodes; node != first_analyzed; node = node->next)
	if (node->needed && FUNC0 (node->decl))
	  FUNC13 (cgraph_dump_file, " %s", FUNC4 (node));
      FUNC13 (cgraph_dump_file, "\n\nInitial ");
      FUNC10 (cgraph_dump_file);
    }

  if (cgraph_dump_file)
    FUNC13 (cgraph_dump_file, "\nReclaiming functions:");

  for (node = cgraph_nodes; node != first_analyzed; node = next)
    {
      tree decl = node->decl;
      next = node->next;

      if (node->local.finalized && !FUNC0 (decl))
	FUNC7 (node);

      if (!node->reachable && FUNC0 (decl))
	{
	  if (cgraph_dump_file)
	    FUNC13 (cgraph_dump_file, " %s", FUNC4 (node));
	  FUNC6 (node);
	  continue;
	}
      else
	node->next_needed = NULL;
      FUNC14 (!node->local.finalized || FUNC0 (decl));
      FUNC14 (node->analyzed == node->local.finalized);
    }
  if (cgraph_dump_file)
    {
      FUNC13 (cgraph_dump_file, "\n\nReclaimed ");
      FUNC10 (cgraph_dump_file);
    }
  first_analyzed = cgraph_nodes;
  FUNC15 ();
  FUNC17 (TV_CGRAPH);
}