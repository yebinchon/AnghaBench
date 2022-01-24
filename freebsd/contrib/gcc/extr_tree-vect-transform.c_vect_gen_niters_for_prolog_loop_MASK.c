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
typedef  scalar_t__ tree ;
struct loop {int dummy; } ;
struct data_reference {int dummy; } ;
typedef  int /*<<< orphan*/  stmt_vec_info ;
typedef  int /*<<< orphan*/  loop_vec_info ;
typedef  int /*<<< orphan*/  edge ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_3__ {scalar_t__ (* type_for_size ) (int /*<<< orphan*/ ,int) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;

/* Variables and functions */
 int BITS_PER_UNIT ; 
 int /*<<< orphan*/  BIT_AND_EXPR ; 
 scalar_t__ FUNC0 (struct data_reference*) ; 
 scalar_t__ INTEGER_CST ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct loop* FUNC2 (int /*<<< orphan*/ ) ; 
 struct data_reference* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MINUS_EXPR ; 
 int /*<<< orphan*/  MIN_EXPR ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  REPORT_DETAILS ; 
 int /*<<< orphan*/  RSHIFT_EXPR ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TDF_SLIM ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,int) ; 
 scalar_t__ FUNC14 (scalar_t__,char*) ; 
 int FUNC15 (int) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 TYPE_2__ lang_hooks ; 
 int /*<<< orphan*/  FUNC20 (struct loop*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,int) ; 
 scalar_t__ FUNC24 (scalar_t__,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  vect_dump ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__) ; 

__attribute__((used)) static tree 
FUNC27 (loop_vec_info loop_vinfo, tree loop_niters)
{
  struct data_reference *dr = FUNC3 (loop_vinfo);
  int vf = FUNC4 (loop_vinfo);
  struct loop *loop = FUNC2 (loop_vinfo);
  tree var, stmt;
  tree iters, iters_name;
  edge pe;
  basic_block new_bb;
  tree dr_stmt = FUNC0 (dr);
  stmt_vec_info stmt_info = FUNC26 (dr_stmt);
  tree vectype = FUNC5 (stmt_info);
  int vectype_align = FUNC8 (vectype) / BITS_PER_UNIT;
  tree niters_type = FUNC7 (loop_niters);

  pe = FUNC20 (loop); 

  if (FUNC1 (loop_vinfo) > 0)
    {
      int byte_misalign = FUNC1 (loop_vinfo);
      int element_size = vectype_align/vf;
      int elem_misalign = byte_misalign / element_size;

      if (FUNC25 (REPORT_DETAILS))
        FUNC18 (vect_dump, "known alignment = %d.", byte_misalign);
      iters = FUNC13 (niters_type, (vf - elem_misalign)&(vf-1));
    }
  else
    {
      tree new_stmts = NULL_TREE;
      tree start_addr =
        FUNC24 (dr_stmt, &new_stmts, NULL_TREE);
      tree ptr_type = FUNC7 (start_addr);
      tree size = FUNC9 (ptr_type);
      tree type = lang_hooks.types.type_for_size (FUNC23 (size, 1), 1);
      tree vectype_size_minus_1 = FUNC13 (type, vectype_align - 1);
      tree elem_size_log =
        FUNC13 (type, FUNC15 (vectype_align/vf));
      tree vf_minus_1 = FUNC13 (type, vf - 1);
      tree vf_tree = FUNC13 (type, vf);
      tree byte_misalign;
      tree elem_misalign;

      new_bb = FUNC11 (pe, new_stmts);
      FUNC19 (!new_bb);
  
      /* Create:  byte_misalign = addr & (vectype_size - 1)  */
      byte_misalign = 
        FUNC12 (BIT_AND_EXPR, type, start_addr, vectype_size_minus_1);
  
      /* Create:  elem_misalign = byte_misalign / element_size  */
      elem_misalign =
        FUNC12 (RSHIFT_EXPR, type, byte_misalign, elem_size_log);

      /* Create:  (niters_type) (VF - elem_misalign)&(VF - 1)  */
      iters = FUNC12 (MINUS_EXPR, type, vf_tree, elem_misalign);
      iters = FUNC12 (BIT_AND_EXPR, type, iters, vf_minus_1);
      iters = FUNC16 (niters_type, iters);
    }

  /* Create:  prolog_loop_niters = min (iters, loop_niters) */
  /* If the loop bound is known at compile time we already verified that it is
     greater than vf; since the misalignment ('iters') is at most vf, there's
     no need to generate the MIN_EXPR in this case.  */
  if (FUNC6 (loop_niters) != INTEGER_CST)
    iters = FUNC12 (MIN_EXPR, niters_type, iters, loop_niters);

  if (FUNC25 (REPORT_DETAILS))
    {
      FUNC18 (vect_dump, "niters for prolog loop: ");
      FUNC21 (vect_dump, iters, TDF_SLIM);
    }

  var = FUNC14 (niters_type, "prolog_loop_niters");
  FUNC10 (var);
  iters_name = FUNC17 (iters, &stmt, false, var);

  /* Insert stmt on loop preheader edge.  */
  if (stmt)
    {
      basic_block new_bb = FUNC11 (pe, stmt);
      FUNC19 (!new_bb);
    }

  return iters_name; 
}