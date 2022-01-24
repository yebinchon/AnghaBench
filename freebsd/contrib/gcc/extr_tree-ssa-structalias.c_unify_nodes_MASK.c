#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* constraint_graph_t ;
struct TYPE_10__ {char* name; int /*<<< orphan*/  oldsolution; int /*<<< orphan*/  solution; } ;
struct TYPE_9__ {scalar_t__ iterations; int /*<<< orphan*/  unified_vars_static; int /*<<< orphan*/  unified_vars_dynamic; } ;
struct TYPE_8__ {scalar_t__* succs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int TDF_DETAILS ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,unsigned int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  changed ; 
 scalar_t__ changed_count ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 unsigned int FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 TYPE_7__* FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  oldpta_obstack ; 
 TYPE_4__ stats ; 
 scalar_t__ FUNC13 (TYPE_1__*,unsigned int,unsigned int) ; 

__attribute__((used)) static void
FUNC14 (constraint_graph_t graph, unsigned int to, unsigned int from,
	     bool update_changed)
{

  FUNC9 (to != from && FUNC7 (to) == to);
  if (dump_file && (dump_flags & TDF_DETAILS))
    FUNC8 (dump_file, "Unifying %s to %s\n",
	     FUNC10 (from)->name,
	     FUNC10 (to)->name);

  if (update_changed)
    stats.unified_vars_dynamic++;
  else
    stats.unified_vars_static++;

  FUNC11 (graph, to, from);
  FUNC12 (graph, to, from);

  if (update_changed && FUNC4 (changed, from))
    {
      FUNC2 (changed, from);
      if (!FUNC4 (changed, to))
	FUNC3 (changed, to);
      else
	{
	  FUNC9 (changed_count > 0);
	  changed_count--;
	}
    }

  /* If the solution changes because of the merging, we need to mark
     the variable as changed.  */
  if (FUNC6 (FUNC10 (to)->solution,
		       FUNC10 (from)->solution))
    {
      if (update_changed && !FUNC4 (changed, to))
	{
	  FUNC3 (changed, to);
	  changed_count++;
	}
    }

  FUNC1 (FUNC10 (from)->solution);
  FUNC1 (FUNC10 (from)->oldsolution);

  if (stats.iterations > 0)
    {
      FUNC1 (FUNC10 (to)->oldsolution);
      FUNC10 (to)->oldsolution = FUNC0 (&oldpta_obstack);
    }

  if (FUNC13 (graph, to, to))
    {
      if (graph->succs[to])
	FUNC5 (graph->succs[to], to);
    }
}