#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct loop {int /*<<< orphan*/  num; int /*<<< orphan*/  header; TYPE_1__* single_exit; } ;
typedef  int /*<<< orphan*/  loop_vec_info ;
typedef  TYPE_2__* edge ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_5__ {int /*<<< orphan*/  dest_idx; int /*<<< orphan*/  dest; } ;
struct TYPE_4__ {int /*<<< orphan*/  dest; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSI_SAME_STMT ; 
 struct loop* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MULT_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 int /*<<< orphan*/  REPORT_DETAILS ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TDF_SLIM ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (struct loop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vect_dump ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 
 scalar_t__ vect_reduction_def ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__) ; 

__attribute__((used)) static void
FUNC26 (loop_vec_info loop_vinfo, tree niters, 
				  edge update_e)
{
  struct loop *loop = FUNC0 (loop_vinfo);
  basic_block exit_bb = loop->single_exit->dest;
  tree phi, phi1;
  basic_block update_bb = update_e->dest;

  /* gcc_assert (vect_can_advance_ivs_p (loop_vinfo)); */

  /* Make sure there exists a single-predecessor exit bb:  */
  FUNC16 (FUNC21 (exit_bb));

  for (phi = FUNC19 (loop->header), phi1 = FUNC19 (update_bb); 
       phi && phi1; 
       phi = FUNC1 (phi), phi1 = FUNC1 (phi1))
    {
      tree access_fn = NULL;
      tree evolution_part;
      tree init_expr;
      tree step_expr;
      tree var, stmt, ni, ni_name;
      block_stmt_iterator last_bsi;

      if (FUNC24 (REPORT_DETAILS))
        {
          FUNC15 (vect_dump, "vect_update_ivs_after_vectorizer: phi: ");
          FUNC20 (vect_dump, phi, TDF_SLIM);
        }

      /* Skip virtual phi's.  */
      if (!FUNC18 (FUNC4 (FUNC2 (phi))))
	{
	  if (FUNC24 (REPORT_DETAILS))
	    FUNC15 (vect_dump, "virtual phi. skip.");
	  continue;
	}

      /* Skip reduction phis.  */
      if (FUNC5 (FUNC25 (phi)) == vect_reduction_def)
        { 
          if (FUNC24 (REPORT_DETAILS))
            FUNC15 (vect_dump, "reduc phi. skip.");
          continue;
        } 

      access_fn = FUNC8 (loop, FUNC2 (phi)); 
      FUNC16 (access_fn);
      evolution_part =
	 FUNC23 (FUNC13 (access_fn, loop->num));
      FUNC16 (evolution_part != NULL_TREE);
      
      /* FORNOW: We do not support IVs whose evolution function is a polynomial
         of degree >= 2 or exponential.  */
      FUNC16 (!FUNC22 (evolution_part));

      step_expr = evolution_part;
      init_expr = FUNC23 (FUNC17 (access_fn, 
							       loop->num));

      ni = FUNC11 (PLUS_EXPR, FUNC6 (init_expr),
		  FUNC11 (MULT_EXPR, FUNC6 (niters),
		       niters, step_expr), init_expr);

      var = FUNC12 (FUNC6 (init_expr), "tmp");
      FUNC7 (var);

      ni_name = FUNC14 (ni, &stmt, false, var);
      
      /* Insert stmt into exit_bb.  */
      last_bsi = FUNC10 (exit_bb);
      if (stmt)
        FUNC9 (&last_bsi, stmt, BSI_SAME_STMT);   

      /* Fix phi expressions in the successor bb.  */
      FUNC3 (phi1, update_e->dest_idx, ni_name);
    }
}