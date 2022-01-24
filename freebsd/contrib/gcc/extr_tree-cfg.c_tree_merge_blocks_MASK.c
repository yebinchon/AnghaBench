#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree_stmt_iterator ;
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  TYPE_1__* basic_block ;
struct TYPE_14__ {int flags; } ;
struct TYPE_13__ {int index; scalar_t__ loop_father; int /*<<< orphan*/ * stmt_list; } ;
typedef  scalar_t__ SSA_NAME_DEF_STMT ;

/* Variables and functions */
 int /*<<< orphan*/  BSI_NEW_STMT ; 
 int EDGE_FALLTHRU ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LABEL_EXPR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  MODIFY_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  TSI_NEW_STMT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ current_loops ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,char*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int FUNC20 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,scalar_t__) ; 
 TYPE_4__* FUNC25 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static void
FUNC29 (basic_block a, basic_block b)
{
  block_stmt_iterator bsi;
  tree_stmt_iterator last;
  tree phi;

  if (dump_file)
    FUNC16 (dump_file, "Merging blocks %d and %d\n", a->index, b->index);

  /* Remove all single-valued PHI nodes from block B of the form
     V_i = PHI <V_j> by propagating V_j to all the uses of V_i.  */
  bsi = FUNC9 (a);
  for (phi = FUNC22 (b); phi; phi = FUNC22 (b))
    {
      tree def = FUNC3 (phi), use = FUNC2 (phi, 0);
      tree copy;
      bool may_replace_uses = FUNC20 (def, use);

      /* In case we have loops to care about, do not propagate arguments of
	 loop closed ssa phi nodes.  */
      if (current_loops
	  && FUNC18 (def)
	  && FUNC5 (use) == SSA_NAME
	  && a->loop_father != b->loop_father)
	may_replace_uses = false;

      if (!may_replace_uses)
	{
	  FUNC17 (FUNC18 (def));

	  /* Note that just emitting the copies is fine -- there is no problem
	     with ordering of phi nodes.  This is because A is the single
	     predecessor of B, therefore results of the phi nodes cannot
	     appear as arguments of the phi nodes.  */
	  copy = FUNC14 (MODIFY_EXPR, void_type_node, def, use);
	  FUNC7 (&bsi, copy, BSI_NEW_STMT);
	  FUNC4 (phi, NULL_TREE);
	  SSA_NAME_DEF_STMT (def) = copy;
	}
      else
	FUNC24 (def, use);

      FUNC23 (phi, NULL);
    }

  /* Ensure that B follows A.  */
  FUNC21 (b, a);

  FUNC17 (FUNC25 (a)->flags & EDGE_FALLTHRU);
  FUNC17 (!FUNC19 (a) || !FUNC26 (FUNC19 (a)));

  /* Remove labels from B and set bb_for_stmt to A for other statements.  */
  for (bsi = FUNC12 (b); !FUNC6 (bsi);)
    {
      if (FUNC5 (FUNC13 (bsi)) == LABEL_EXPR)
	{
	  tree label = FUNC13 (bsi);

	  FUNC11 (&bsi, false);
	  /* Now that we can thread computed gotos, we might have
	     a situation where we have a forced label in block B
	     However, the label at the start of block B might still be
	     used in other ways (think about the runtime checking for
	     Fortran assigned gotos).  So we can not just delete the
	     label.  Instead we move the label to the start of block A.  */
	  if (FUNC0 (FUNC1 (label)))
	    {
	      block_stmt_iterator dest_bsi = FUNC12 (a);
	      FUNC8 (&dest_bsi, label, BSI_NEW_STMT);
	    }
	}
      else
	{
	  FUNC15 (FUNC13 (bsi), a);
	  FUNC10 (&bsi);
	}
    }

  /* Merge the chains.  */
  last = FUNC27 (a->stmt_list);
  FUNC28 (&last, b->stmt_list, TSI_NEW_STMT);
  b->stmt_list = NULL;
}