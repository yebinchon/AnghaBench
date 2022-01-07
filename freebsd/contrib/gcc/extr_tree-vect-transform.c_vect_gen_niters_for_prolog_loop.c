
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct loop {int dummy; } ;
struct data_reference {int dummy; } ;
typedef int stmt_vec_info ;
typedef int loop_vec_info ;
typedef int edge ;
typedef int basic_block ;
struct TYPE_3__ {scalar_t__ (* type_for_size ) (int ,int) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;


 int BITS_PER_UNIT ;
 int BIT_AND_EXPR ;
 scalar_t__ DR_STMT (struct data_reference*) ;
 scalar_t__ INTEGER_CST ;
 int LOOP_PEELING_FOR_ALIGNMENT (int ) ;
 struct loop* LOOP_VINFO_LOOP (int ) ;
 struct data_reference* LOOP_VINFO_UNALIGNED_DR (int ) ;
 int LOOP_VINFO_VECT_FACTOR (int ) ;
 int MINUS_EXPR ;
 int MIN_EXPR ;
 scalar_t__ NULL_TREE ;
 int REPORT_DETAILS ;
 int RSHIFT_EXPR ;
 scalar_t__ STMT_VINFO_VECTYPE (int ) ;
 int TDF_SLIM ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TYPE_ALIGN (scalar_t__) ;
 scalar_t__ TYPE_SIZE (scalar_t__) ;
 int add_referenced_var (scalar_t__) ;
 int bsi_insert_on_edge_immediate (int ,scalar_t__) ;
 scalar_t__ build2 (int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ build_int_cst (scalar_t__,int) ;
 scalar_t__ create_tmp_var (scalar_t__,char*) ;
 int exact_log2 (int) ;
 scalar_t__ fold_convert (scalar_t__,scalar_t__) ;
 scalar_t__ force_gimple_operand (scalar_t__,scalar_t__*,int,scalar_t__) ;
 int fprintf (int ,char*,...) ;
 int gcc_assert (int) ;
 TYPE_2__ lang_hooks ;
 int loop_preheader_edge (struct loop*) ;
 int print_generic_expr (int ,scalar_t__,int ) ;
 scalar_t__ stub1 (int ,int) ;
 int tree_low_cst (scalar_t__,int) ;
 scalar_t__ vect_create_addr_base_for_vector_ref (scalar_t__,scalar_t__*,scalar_t__) ;
 int vect_dump ;
 scalar_t__ vect_print_dump_info (int ) ;
 int vinfo_for_stmt (scalar_t__) ;

__attribute__((used)) static tree
vect_gen_niters_for_prolog_loop (loop_vec_info loop_vinfo, tree loop_niters)
{
  struct data_reference *dr = LOOP_VINFO_UNALIGNED_DR (loop_vinfo);
  int vf = LOOP_VINFO_VECT_FACTOR (loop_vinfo);
  struct loop *loop = LOOP_VINFO_LOOP (loop_vinfo);
  tree var, stmt;
  tree iters, iters_name;
  edge pe;
  basic_block new_bb;
  tree dr_stmt = DR_STMT (dr);
  stmt_vec_info stmt_info = vinfo_for_stmt (dr_stmt);
  tree vectype = STMT_VINFO_VECTYPE (stmt_info);
  int vectype_align = TYPE_ALIGN (vectype) / BITS_PER_UNIT;
  tree niters_type = TREE_TYPE (loop_niters);

  pe = loop_preheader_edge (loop);

  if (LOOP_PEELING_FOR_ALIGNMENT (loop_vinfo) > 0)
    {
      int byte_misalign = LOOP_PEELING_FOR_ALIGNMENT (loop_vinfo);
      int element_size = vectype_align/vf;
      int elem_misalign = byte_misalign / element_size;

      if (vect_print_dump_info (REPORT_DETAILS))
        fprintf (vect_dump, "known alignment = %d.", byte_misalign);
      iters = build_int_cst (niters_type, (vf - elem_misalign)&(vf-1));
    }
  else
    {
      tree new_stmts = NULL_TREE;
      tree start_addr =
        vect_create_addr_base_for_vector_ref (dr_stmt, &new_stmts, NULL_TREE);
      tree ptr_type = TREE_TYPE (start_addr);
      tree size = TYPE_SIZE (ptr_type);
      tree type = lang_hooks.types.type_for_size (tree_low_cst (size, 1), 1);
      tree vectype_size_minus_1 = build_int_cst (type, vectype_align - 1);
      tree elem_size_log =
        build_int_cst (type, exact_log2 (vectype_align/vf));
      tree vf_minus_1 = build_int_cst (type, vf - 1);
      tree vf_tree = build_int_cst (type, vf);
      tree byte_misalign;
      tree elem_misalign;

      new_bb = bsi_insert_on_edge_immediate (pe, new_stmts);
      gcc_assert (!new_bb);


      byte_misalign =
        build2 (BIT_AND_EXPR, type, start_addr, vectype_size_minus_1);


      elem_misalign =
        build2 (RSHIFT_EXPR, type, byte_misalign, elem_size_log);


      iters = build2 (MINUS_EXPR, type, vf_tree, elem_misalign);
      iters = build2 (BIT_AND_EXPR, type, iters, vf_minus_1);
      iters = fold_convert (niters_type, iters);
    }





  if (TREE_CODE (loop_niters) != INTEGER_CST)
    iters = build2 (MIN_EXPR, niters_type, iters, loop_niters);

  if (vect_print_dump_info (REPORT_DETAILS))
    {
      fprintf (vect_dump, "niters for prolog loop: ");
      print_generic_expr (vect_dump, iters, TDF_SLIM);
    }

  var = create_tmp_var (niters_type, "prolog_loop_niters");
  add_referenced_var (var);
  iters_name = force_gimple_operand (iters, &stmt, 0, var);


  if (stmt)
    {
      basic_block new_bb = bsi_insert_on_edge_immediate (pe, stmt);
      gcc_assert (!new_bb);
    }

  return iters_name;
}
