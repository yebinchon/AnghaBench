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
typedef  int tree ;
struct loop {int dummy; } ;
typedef  int /*<<< orphan*/ * stmt_vec_info ;
typedef  int /*<<< orphan*/  loop_vec_info ;
typedef  enum vect_def_type { ____Placeholder_vect_def_type } vect_def_type ;

/* Variables and functions */
 struct loop* FUNC0 (int /*<<< orphan*/ ) ; 
 int NULL_TREE ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PHI_NODE ; 
 int /*<<< orphan*/  REPORT_DETAILS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TDF_SLIM ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int,int) ; 
 int FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 (int,int,int*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (struct loop*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC17 (int,int,int) ; 
#define  vect_constant_def 132 
 int /*<<< orphan*/  vect_dump ; 
#define  vect_induction_def 131 
 int FUNC18 (int,int) ; 
#define  vect_invariant_def 130 
 int FUNC19 (int,int /*<<< orphan*/ ,int*,int*,int*) ; 
#define  vect_loop_def 129 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
#define  vect_reduction_def 128 
 int /*<<< orphan*/ * FUNC21 (int) ; 

__attribute__((used)) static tree
FUNC22 (tree op, tree stmt, tree *scalar_def)
{
  tree vec_oprnd;
  tree vec_stmt;
  tree def_stmt;
  stmt_vec_info def_stmt_info = NULL;
  stmt_vec_info stmt_vinfo = FUNC21 (stmt);
  tree vectype = FUNC3 (stmt_vinfo);
  int nunits = FUNC7 (vectype);
  loop_vec_info loop_vinfo = FUNC2 (stmt_vinfo);
  struct loop *loop = FUNC0 (loop_vinfo);
  tree vec_inv;
  tree vec_cst;
  tree t = NULL_TREE;
  tree def;
  int i;
  enum vect_def_type dt;
  bool is_simple_use;

  if (FUNC20 (REPORT_DETAILS))
    {
      FUNC10 (vect_dump, "vect_get_vec_def_for_operand: ");
      FUNC16 (vect_dump, op, TDF_SLIM);
    }

  is_simple_use = FUNC19 (op, loop_vinfo, &def_stmt, &def, &dt);
  FUNC11 (is_simple_use);
  if (FUNC20 (REPORT_DETAILS))
    {
      if (def)
        {
          FUNC10 (vect_dump, "def =  ");
          FUNC16 (vect_dump, def, TDF_SLIM);
        }
      if (def_stmt)
        {
          FUNC10 (vect_dump, "  def_stmt =  ");
          FUNC16 (vect_dump, def_stmt, TDF_SLIM);
        }
    }

  switch (dt)
    {
    /* Case 1: operand is a constant.  */
    case vect_constant_def:
      {
	if (scalar_def) 
	  *scalar_def = op;

        /* Create 'vect_cst_ = {cst,cst,...,cst}'  */
        if (FUNC20 (REPORT_DETAILS))
          FUNC10 (vect_dump, "Create vector_cst. nunits = %d", nunits);

        for (i = nunits - 1; i >= 0; --i)
          {
            t = FUNC17 (NULL_TREE, op, t);
          }
        vec_cst = FUNC9 (vectype, t);
        return FUNC18 (stmt, vec_cst);
      }

    /* Case 2: operand is defined outside the loop - loop invariant.  */
    case vect_invariant_def:
      {
	if (scalar_def) 
	  *scalar_def = def;

        /* Create 'vec_inv = {inv,inv,..,inv}'  */
        if (FUNC20 (REPORT_DETAILS))
          FUNC10 (vect_dump, "Create vector_inv.");

        for (i = nunits - 1; i >= 0; --i)
          {
            t = FUNC17 (NULL_TREE, def, t);
          }

	/* FIXME: use build_constructor directly.  */
        vec_inv = FUNC8 (vectype, t);
        return FUNC18 (stmt, vec_inv);
      }

    /* Case 3: operand is defined inside the loop.  */
    case vect_loop_def:
      {
	if (scalar_def) 
	  *scalar_def = def_stmt;

        /* Get the def from the vectorized stmt.  */
        def_stmt_info = FUNC21 (def_stmt);
        vec_stmt = FUNC4 (def_stmt_info);
        FUNC11 (vec_stmt);
        vec_oprnd = FUNC6 (vec_stmt, 0);
        return vec_oprnd;
      }

    /* Case 4: operand is defined by a loop header phi - reduction  */
    case vect_reduction_def:
      {
        FUNC11 (FUNC5 (def_stmt) == PHI_NODE);

        /* Get the def before the loop  */
        op = FUNC1 (def_stmt, FUNC15 (loop));
        return FUNC13 (stmt, op, scalar_def);
     }

    /* Case 5: operand is defined by loop-header phi - induction.  */
    case vect_induction_def:
      {
        if (FUNC20 (REPORT_DETAILS))
          FUNC10 (vect_dump, "induction - unsupported.");
        FUNC14 ("no support for induction"); /* FORNOW */
      }

    default:
      FUNC12 ();
    }
}