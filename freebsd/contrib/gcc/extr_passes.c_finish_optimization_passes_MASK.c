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
struct dump_file_info {int flags; } ;
typedef  enum tree_dump_index { ____Placeholder_tree_dump_index } tree_dump_index ;
struct TYPE_4__ {int /*<<< orphan*/  static_pass_number; } ;
struct TYPE_3__ {int /*<<< orphan*/  static_pass_number; } ;

/* Variables and functions */
 int TDF_GRAPH ; 
 int TDI_end ; 
 int /*<<< orphan*/  TV_DUMP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ dump_file ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ flag_branch_probabilities ; 
 scalar_t__ flag_test_coverage ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct dump_file_info* FUNC7 (int) ; 
 char* FUNC8 (int) ; 
 scalar_t__ graph_dump_format ; 
 scalar_t__ no_graph ; 
 scalar_t__ optimize ; 
 TYPE_2__ pass_combine ; 
 TYPE_1__ pass_profile ; 
 scalar_t__ profile_arc_flag ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void
FUNC11 (void)
{
  enum tree_dump_index i;
  struct dump_file_info *dfi;
  char *name;

  FUNC10 (TV_DUMP);
  if (profile_arc_flag || flag_test_coverage || flag_branch_probabilities)
    {
      dump_file = FUNC0 (pass_profile.static_pass_number, NULL);
      FUNC4 ();
      if (dump_file)
	FUNC2 (pass_profile.static_pass_number, dump_file);
    }

  if (optimize > 0)
    {
      dump_file = FUNC0 (pass_combine.static_pass_number, NULL);
      if (dump_file)
	{
	  FUNC1 (dump_file);
          FUNC2 (pass_combine.static_pass_number, dump_file);
	}
    }

  /* Do whatever is necessary to finish printing the graphs.  */
  if (graph_dump_format != no_graph)
    for (i = TDI_end; (dfi = FUNC7 (i)) != NULL; ++i)
      if (FUNC3 (i)
	  && (dfi->flags & TDF_GRAPH) != 0
	  && (name = FUNC8 (i)) != NULL)
	{
	  FUNC5 (name);
	  FUNC6 (name);
	}

  FUNC9 (TV_DUMP);
}