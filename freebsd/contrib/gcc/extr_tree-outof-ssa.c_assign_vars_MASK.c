#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  var_map ;
typedef  TYPE_1__* var_ann_t ;
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  root_var_p ;
struct TYPE_3__ {int out_of_ssa_tag; } ;

/* Variables and functions */
 int ROOT_VAR_NONE ; 
 scalar_t__ SSA_NAME ; 
 int TDF_DETAILS ; 
 int /*<<< orphan*/  TDF_SLIM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,scalar_t__,char*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC14 (scalar_t__) ; 
 int FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC16 (var_map map)
{
  int x, i, num, rep;
  tree t, var;
  var_ann_t ann;
  root_var_p rv;

  rv = FUNC11 (map);
  if (!rv) 
    return;

  /* Coalescing may already have forced some partitions to their root 
     variable. Find these and tag them.  */

  num = FUNC4 (map);
  for (x = 0; x < num; x++)
    {
      var = FUNC5 (map, x);
      if (FUNC0 (var) != SSA_NAME)
	{
	  /* Coalescing will already have verified that more than one
	     partition doesn't have the same root variable. Simply marked
	     the variable as assigned.  */
	  ann = FUNC14 (var);
	  ann->out_of_ssa_tag = 1;
	  if (dump_file && (dump_flags & TDF_DETAILS))
	    {
	      FUNC3 (dump_file, "partition %d has variable ", x);
	      FUNC7 (dump_file, var, TDF_SLIM);
	      FUNC3 (dump_file, " assigned to it.\n");
	    }

	}
    }

  num = FUNC13 (rv);
  for (x = 0; x < num; x++)
    {
      var = FUNC8 (rv, x);
      ann = FUNC14 (var);
      for (i = FUNC10 (rv, x);
	   i != ROOT_VAR_NONE;
	   i = FUNC12 (rv, i))
	{
	  t = FUNC5 (map, i);

	  if (t == var || FUNC0 (t) != SSA_NAME)
	    continue;

	  rep = FUNC15 (map, t);
	  
	  if (!ann->out_of_ssa_tag)
	    {
	      if (dump_file && (dump_flags & TDF_DETAILS))
		FUNC6 (dump_file, "", t, "  --> ", var, "\n");
	      FUNC1 (map, var, rep);
	      continue;
	    }

	  if (dump_file && (dump_flags & TDF_DETAILS))
	    FUNC6 (dump_file, "", t, " not coalesced with ", var, 
			 "");

	  var = FUNC2 (t);
	  FUNC1 (map, var, rep);
	  ann = FUNC14 (var);

	  if (dump_file && (dump_flags & TDF_DETAILS))
	    {
	      FUNC3 (dump_file, " -->  New temp:  '");
	      FUNC7 (dump_file, var, TDF_SLIM);
	      FUNC3 (dump_file, "'\n");
	    }
	}
    }

  FUNC9 (rv);
}