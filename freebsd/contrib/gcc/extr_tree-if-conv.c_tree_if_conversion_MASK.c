#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct loop {unsigned int num_nodes; } ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  TYPE_1__* basic_block ;
struct TYPE_9__ {int /*<<< orphan*/  aux; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDI_POST_DOMINATORS ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int TDF_DETAILS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct loop*) ; 
 int /*<<< orphan*/  FUNC6 (struct loop*) ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct loop*,int) ; 
 TYPE_1__** ifc_bbs ; 
 TYPE_1__* FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (struct loop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC14 (struct loop *loop, bool for_vectorizer)
{
  basic_block bb;
  block_stmt_iterator itr;
  unsigned int i;

  ifc_bbs = NULL;

  /* if-conversion is not appropriate for all loops. First, check if loop  is
     if-convertible or not.  */
  if (!FUNC10 (loop, for_vectorizer))
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
	FUNC7 (dump_file,"-------------------------\n");
      if (ifc_bbs)
	{
	  FUNC8 (ifc_bbs);
	  ifc_bbs = NULL;
	}
      FUNC9 (CDI_POST_DOMINATORS);
      return false;
    }

  /* Do actual work now.  */
  for (i = 0; i < loop->num_nodes; i++)
    {
      tree cond;

      bb = ifc_bbs [i];

      /* Update condition using predicate list.  */
      cond = bb->aux;

      /* Process all statements in this basic block.
	 Remove conditional expression, if any, and annotate
	 destination basic block(s) appropriately.  */
      for (itr = FUNC3 (bb); !FUNC1 (itr); /* empty */)
	{
	  tree t = FUNC4 (itr);
	  cond = FUNC13 (loop, t, cond, &itr);
	  if (!FUNC1 (itr))
	    FUNC2 (&itr);
	}

      /* If current bb has only one successor, then consider it as an
	 unconditional goto.  */
      if (FUNC12 (bb))
	{
	  basic_block bb_n = FUNC11 (bb);
	  if (cond != NULL_TREE)
	    FUNC0 (bb_n, cond);
	}
    }

  /* Now, all statements are if-converted and basic blocks are
     annotated appropriately. Combine all basic block into one huge
     basic block.  */
  FUNC6 (loop);

  /* clean up */
  FUNC5 (loop);
  FUNC8 (ifc_bbs);
  ifc_bbs = NULL;

  return true;
}