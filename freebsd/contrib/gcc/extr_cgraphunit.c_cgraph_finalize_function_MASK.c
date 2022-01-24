#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_4__ {int finalized; } ;
struct cgraph_node {scalar_t__ nested; int /*<<< orphan*/  lowered; TYPE_1__ local; int /*<<< orphan*/  decl; } ;
struct TYPE_6__ {int /*<<< orphan*/ * cfg; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* deferred_inline_function ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cgraph_node*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct cgraph_node*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct cgraph_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct cgraph_node*) ; 
 struct cgraph_node* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct cgraph_node*) ; 
 TYPE_2__* debug_hooks ; 
 scalar_t__ FUNC12 (struct cgraph_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flag_unit_at_a_time ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ warn_unused_parameter ; 

void
FUNC19 (tree decl, bool nested)
{
  struct cgraph_node *node = FUNC10 (decl);

  if (node->local.finalized)
    FUNC11 (node);

  FUNC17 (decl);
  node->decl = decl;
  node->local.finalized = true;
  node->lowered = FUNC2 (decl)->cfg != NULL;
  if (node->nested)
    /* APPLE LOCAL radar 6305545 */
    FUNC16 (decl, false);
  FUNC14 (!node->nested);

  /* If not unit at a time, then we need to create the call graph
     now, so that called functions can be queued and emitted now.  */
  if (!flag_unit_at_a_time)
    {
      FUNC5 (node);
      FUNC7 (node, false);
    }

  if (FUNC12 (node, decl))
    FUNC8 (node);

  /* Since we reclaim unreachable nodes at the end of every language
     level unit, we need to be conservative about possible entry points
     there.  */
  if ((FUNC4 (decl) && !FUNC0 (decl) && !FUNC1 (decl)))
    FUNC9 (node);

  /* If not unit at a time, go ahead and emit everything we've found
     to be reachable at this time.  */
  if (!nested)
    {
      if (!FUNC6 ())
	FUNC15 ();
    }

  /* If we've not yet emitted decl, tell the debug info about it.  */
  if (!FUNC3 (decl))
    (*debug_hooks->deferred_inline_function) (decl);

  /* Possibly warn about unused parameters.  */
  if (warn_unused_parameter)
    FUNC13 (decl);
}