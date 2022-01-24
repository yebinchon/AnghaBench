#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* var_map ;
typedef  TYPE_2__* var_ann_t ;
typedef  scalar_t__ tree ;
struct TYPE_10__ {int /*<<< orphan*/  (* types_compatible_p ) (scalar_t__,scalar_t__) ;} ;
struct TYPE_9__ {scalar_t__ symbol_mem_tag; } ;
struct TYPE_8__ {int /*<<< orphan*/  var_partition; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int NO_PARTITION ; 
 scalar_t__ PARM_DECL ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ RESULT_DECL ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  TDF_SLIM ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 TYPE_6__ lang_hooks ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_1__*,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__) ; 
 TYPE_2__* FUNC19 (scalar_t__) ; 

__attribute__((used)) static void
FUNC20 (var_map map, tree var1, tree var2, FILE *debug)
{
  int p1, p2, p3;
  tree root1, root2;
  tree rep1, rep2;
  var_ann_t ann1, ann2, ann3;
  bool ign1, ign2, abnorm;

  FUNC10 (FUNC6 (var1) == SSA_NAME);
  FUNC10 (FUNC6 (var2) == SSA_NAME);

  FUNC16 (map, var1, false);
  FUNC16 (map, var2, true);

  p1 = FUNC12 (map->var_partition, FUNC5 (var1));
  p2 = FUNC12 (map->var_partition, FUNC5 (var2));

  if (debug)
    {
      FUNC9 (debug, "Try : ");
      FUNC15 (debug, var1, TDF_SLIM);
      FUNC9 (debug, "(P%d) & ", p1);
      FUNC15 (debug, var2, TDF_SLIM);
      FUNC9 (debug, "(P%d)", p2);
    }

  FUNC10 (p1 != NO_PARTITION);
  FUNC10 (p2 != NO_PARTITION);

  rep1 = FUNC13 (map, p1);
  rep2 = FUNC13 (map, p2);
  root1 = FUNC4 (rep1);
  root2 = FUNC4 (rep2);

  ann1 = FUNC19 (root1);
  ann2 = FUNC19 (root2);

  if (p1 == p2)
    {
      if (debug)
	FUNC9 (debug, " : Already coalesced.\n");
      return;
    }

  /* Don't coalesce if one of the variables occurs in an abnormal PHI.  */
  abnorm = (FUNC3 (rep1)
	    || FUNC3 (rep2));
  if (abnorm)
    {
      if (debug)
	FUNC9 (debug, " : Abnormal PHI barrier.  No coalesce.\n");
      return;
    }

  /* Partitions already have the same root, simply merge them.  */
  if (root1 == root2)
    {
      p1 = FUNC14 (map->var_partition, p1, p2);
      if (debug)
	FUNC9 (debug, " : Same root, coalesced --> P%d.\n", p1);
      return;
    }

  /* Never attempt to coalesce 2 difference parameters.  */
  if (FUNC6 (root1) == PARM_DECL && FUNC6 (root2) == PARM_DECL)
    {
      if (debug)
        FUNC9 (debug, " : 2 different PARM_DECLS. No coalesce.\n");
      return;
    }

  if ((FUNC6 (root1) == RESULT_DECL) != (FUNC6 (root2) == RESULT_DECL))
    {
      if (debug)
        FUNC9 (debug, " : One root a RESULT_DECL. No coalesce.\n");
      return;
    }

  ign1 = FUNC6 (root1) == VAR_DECL && FUNC1 (root1);
  ign2 = FUNC6 (root2) == VAR_DECL && FUNC1 (root2);

  /* Never attempt to coalesce 2 user variables unless one is an inline 
     variable.  */
  if (!ign1 && !ign2)
    {
      if (FUNC0 (root2))
        ign2 = true;
      else if (FUNC0 (root1))
	ign1 = true;
      else 
	{
	  if (debug)
	    FUNC9 (debug, " : 2 different USER vars. No coalesce.\n");
	  return;
	}
    }

  /* Don't coalesce if there are two different memory tags.  */
  if (ann1->symbol_mem_tag
      && ann2->symbol_mem_tag
      && ann1->symbol_mem_tag != ann2->symbol_mem_tag)
    {
      if (debug)
	FUNC9 (debug, " : 2 memory tags. No coalesce.\n");
      return;
    }

  /* If both values have default defs, we can't coalesce.  If only one has a 
     tag, make sure that variable is the new root partition.  */
  if (FUNC8 (root1))
    {
      if (FUNC8 (root2))
	{
	  if (debug)
	    FUNC9 (debug, " : 2 default defs. No coalesce.\n");
	  return;
	}
      else
        {
	  ign2 = true;
	  ign1 = false;
	}
    }
  else if (FUNC8 (root2))
    {
      ign1 = true;
      ign2 = false;
    }

  /* Don't coalesce if the two variables aren't type compatible.  */
  if (!lang_hooks.types_compatible_p (FUNC7 (root1), FUNC7 (root2)))
    {
      if (debug)
	FUNC9 (debug, " : Incompatible types.  No coalesce.\n");
      return;
    }

  /* Don't coalesce if the aliasing sets of the types are different.  */
  if (FUNC2 (FUNC7 (root1))
      && FUNC2 (FUNC7 (root2))
      && FUNC11 (FUNC7 (FUNC7 (root1)))
          != FUNC11 (FUNC7 (FUNC7 (root2))))
    {
      if (debug)
	FUNC9 (debug, " : 2 different aliasing sets. No coalesce.\n");
      return;
    }


  /* Merge the two partitions.  */
  p3 = FUNC14 (map->var_partition, p1, p2);

  /* Set the root variable of the partition to the better choice, if there is 
     one.  */
  if (!ign2)
    FUNC17 (FUNC13 (map, p3), root2);
  else if (!ign1)
    FUNC17 (FUNC13 (map, p3), root1);

  /* Update the various flag widgitry of the current base representative.  */
  ann3 = FUNC19 (FUNC4 (FUNC13 (map, p3)));
  if (ann1->symbol_mem_tag)
    ann3->symbol_mem_tag = ann1->symbol_mem_tag;
  else
    ann3->symbol_mem_tag = ann2->symbol_mem_tag;

  if (debug)
    {
      FUNC9 (debug, " --> P%d ", p3);
      FUNC15 (debug, FUNC4 (FUNC13 (map, p3)), 
			  TDF_SLIM);
      FUNC9 (debug, "\n");
    }
}