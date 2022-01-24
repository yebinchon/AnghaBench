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
struct TYPE_2__ {scalar_t__ inlined_to; } ;
struct cgraph_node {int /*<<< orphan*/  decl; TYPE_1__ global; scalar_t__ analyzed; struct cgraph_node* next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TV_CGRAPHOPT ; 
 scalar_t__ cgraph_dump_file ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int cgraph_global_info_ready ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct cgraph_node* cgraph_nodes ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,struct cgraph_node*) ; 
 int /*<<< orphan*/  dump_file ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 scalar_t__ errorcount ; 
 int /*<<< orphan*/  flag_toplevel_reorder ; 
 scalar_t__ flag_unit_at_a_time ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  quiet_flag ; 
 scalar_t__ sorrycount ; 
 scalar_t__ stderr ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 

void
FUNC21 (void)
{
  if (errorcount || sorrycount)
    return;

#ifdef ENABLE_CHECKING
  verify_cgraph ();
#endif
  if (!flag_unit_at_a_time)
    {
      FUNC6 ();
      FUNC9 ();
      FUNC10 ();
      return;
    }

  /* Frontend may output common variables after the unit has been finalized.
     It is safe to deal with them here as they are always zero initialized.  */
  FUNC8 ();

  FUNC19 (TV_CGRAPHOPT);
  if (!quiet_flag)
    FUNC15 (stderr, "Performing interprocedural optimizations\n");

  FUNC2 ();
  if (cgraph_dump_file)
    {
      FUNC15 (cgraph_dump_file, "Marked ");
      FUNC12 (cgraph_dump_file);
    }
    
  /* Don't run the IPA passes if there was any error or sorry messages.  */
  if (errorcount == 0 && sorrycount == 0)
    FUNC17 ();

  /* This pass remove bodies of extern inline functions we never inlined.
     Do this later so other IPA passes see what is really going on.  */
  FUNC7 (false, dump_file);
  FUNC3 ();
  cgraph_global_info_ready = true;
  if (cgraph_dump_file)
    {
      FUNC15 (cgraph_dump_file, "Optimized ");
      FUNC12 (cgraph_dump_file);
      FUNC14 (cgraph_dump_file);
    }
  FUNC18 (TV_CGRAPHOPT);

  /* Output everything.  */
  if (!quiet_flag)
    FUNC15 (stderr, "Assembling functions:\n");
#ifdef ENABLE_CHECKING
  verify_cgraph ();
#endif

  FUNC4 ();

  if (!flag_toplevel_reorder)
    FUNC5 ();
  else
    {
      FUNC6 ();

      FUNC1 ();
      FUNC11 ();

      FUNC9 ();
      FUNC10 ();
    }

  if (cgraph_dump_file)
    {
      FUNC15 (cgraph_dump_file, "\nFinal ");
      FUNC12 (cgraph_dump_file);
    }
#ifdef ENABLE_CHECKING
  verify_cgraph ();
  /* Double check that all inline clones are gone and that all
     function bodies have been released from memory.  */
  if (flag_unit_at_a_time
      && !(sorrycount || errorcount))
    {
      struct cgraph_node *node;
      bool error_found = false;

      for (node = cgraph_nodes; node; node = node->next)
	if (node->analyzed
	    && (node->global.inlined_to
		|| DECL_SAVED_TREE (node->decl)))
	  {
	    error_found = true;
	    dump_cgraph_node (stderr, node);
	  }
      if (error_found)
	internal_error ("nodes with no released memory found");
    }
#endif
}