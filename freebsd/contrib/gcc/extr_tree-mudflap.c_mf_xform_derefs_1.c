
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int location_t ;
typedef int block_stmt_iterator ;


 int ADDR_EXPR ;


 int BITS_PER_UNIT ;

 int CEIL_DIV_EXPR ;

 int DECL_BIT_FIELD_TYPE (scalar_t__) ;
 scalar_t__ DECL_SIZE_UNIT (scalar_t__) ;

 int INDIRECT_REF_P (scalar_t__) ;
 int const INTEGER_CST ;
 int MINUS_EXPR ;
 scalar_t__ NULL_TREE ;
 int const PARM_DECL ;
 int PLUS_EXPR ;
 int const RESULT_DECL ;
 int const STRING_CST ;

 int const TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TRUNC_DIV_EXPR ;
 int TRUNC_MOD_EXPR ;
 scalar_t__ TYPE_SIZE_UNIT (scalar_t__) ;
 int const VAR_DECL ;
 scalar_t__ bitsize_int (int ) ;
 int bitsizetype ;
 scalar_t__ build1 (int ,int ,scalar_t__) ;
 scalar_t__ build_int_cst (int ,int) ;
 int build_pointer_type (scalar_t__) ;
 scalar_t__ byte_position (scalar_t__) ;
 scalar_t__ convert (int ,scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ flag_mudflap_ignore_reads ;
 scalar_t__ fold_build2 (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ fold_convert (int ,scalar_t__) ;
 int gcc_assert (int) ;
 scalar_t__ integer_one_node ;
 scalar_t__ integer_zero_node ;
 int mf_build_check_statement_for (scalar_t__,scalar_t__,int *,int *,scalar_t__) ;
 int mf_decl_eligible_p (scalar_t__) ;
 scalar_t__ mf_marked_p (scalar_t__) ;
 int mf_uintptr_type ;
 int ptr_type_node ;
 scalar_t__ size_binop (int ,scalar_t__,scalar_t__) ;
 int sizetype ;
 scalar_t__ tree_mem_ref_addr (int ,scalar_t__) ;
 int warning (int ,char*) ;

__attribute__((used)) static void
mf_xform_derefs_1 (block_stmt_iterator *iter, tree *tp,
                   location_t *locus, tree dirflag)
{
  tree type, base, limit, addr, size, t;


  if (dirflag == integer_zero_node && flag_mudflap_ignore_reads)
    return;


  if (mf_marked_p (*tp))
    return;

  t = *tp;
  type = TREE_TYPE (t);

  if (type == error_mark_node)
    return;

  size = TYPE_SIZE_UNIT (type);

  switch (TREE_CODE (t))
    {
    case 132:
    case 130:
      {
        tree var;
        int component_ref_only = (TREE_CODE (t) == 130);



 tree elt = NULL_TREE;
 int bitfield_ref_p = (TREE_CODE (t) == 130
         && DECL_BIT_FIELD_TYPE (TREE_OPERAND (t, 1)));



        var = TREE_OPERAND (t, 0);
        while (1)
          {
     if (bitfield_ref_p && elt == NULL_TREE
  && (TREE_CODE (var) == 132 || TREE_CODE (var) == 130))
       elt = var;

            if (TREE_CODE (var) == 132)
              {
                component_ref_only = 0;
                var = TREE_OPERAND (var, 0);
              }
            else if (TREE_CODE (var) == 130)
              var = TREE_OPERAND (var, 0);
            else if (INDIRECT_REF_P (var))
              {
  base = TREE_OPERAND (var, 0);
                break;
              }
            else
              {
                gcc_assert (TREE_CODE (var) == VAR_DECL
                            || TREE_CODE (var) == PARM_DECL
                            || TREE_CODE (var) == RESULT_DECL
                            || TREE_CODE (var) == STRING_CST);




                if (! mf_decl_eligible_p (var) || component_ref_only)
                  return;
                else
    {
      base = build1 (ADDR_EXPR, build_pointer_type (TREE_TYPE (var)), var);
      break;
    }
              }
          }
        if (bitfield_ref_p)
          {
            tree field = TREE_OPERAND (t, 1);

            if (TREE_CODE (DECL_SIZE_UNIT (field)) == INTEGER_CST)
              size = DECL_SIZE_UNIT (field);

     if (elt)
       elt = build1 (ADDR_EXPR, build_pointer_type (TREE_TYPE (elt)), elt);
            addr = fold_convert (ptr_type_node, elt ? elt : base);
            addr = fold_build2 (PLUS_EXPR, ptr_type_node,
    addr, fold_convert (ptr_type_node,
          byte_position (field)));
          }
        else
          addr = build1 (ADDR_EXPR, build_pointer_type (type), t);

        limit = fold_build2 (MINUS_EXPR, mf_uintptr_type,
                             fold_build2 (PLUS_EXPR, mf_uintptr_type,
       convert (mf_uintptr_type, addr),
       size),
                             integer_one_node);
      }
      break;

    case 129:
      addr = TREE_OPERAND (t, 0);
      base = addr;
      limit = fold_build2 (MINUS_EXPR, ptr_type_node,
                           fold_build2 (PLUS_EXPR, ptr_type_node, base, size),
                           integer_one_node);
      break;

    case 128:
      addr = tree_mem_ref_addr (ptr_type_node, t);
      base = addr;
      limit = fold_build2 (MINUS_EXPR, ptr_type_node,
      fold_build2 (PLUS_EXPR, ptr_type_node, base, size),
      build_int_cst (ptr_type_node, 1));
      break;

    case 133:
      warning (0, "mudflap checking not yet implemented for ARRAY_RANGE_REF");
      return;

    case 131:

      {
        tree ofs, rem, bpu;



        if (TREE_CODE (TREE_OPERAND (t, 0)) != 129)
          return;

        bpu = bitsize_int (BITS_PER_UNIT);
        ofs = convert (bitsizetype, TREE_OPERAND (t, 2));
        rem = size_binop (TRUNC_MOD_EXPR, ofs, bpu);
        ofs = size_binop (TRUNC_DIV_EXPR, ofs, bpu);

        size = convert (bitsizetype, TREE_OPERAND (t, 1));
        size = size_binop (PLUS_EXPR, size, rem);
        size = size_binop (CEIL_DIV_EXPR, size, bpu);
        size = convert (sizetype, size);

        addr = TREE_OPERAND (TREE_OPERAND (t, 0), 0);
        addr = convert (ptr_type_node, addr);
        addr = fold_build2 (PLUS_EXPR, ptr_type_node, addr, ofs);

        base = addr;
        limit = fold_build2 (MINUS_EXPR, ptr_type_node,
                             fold_build2 (PLUS_EXPR, ptr_type_node, base, size),
                             integer_one_node);
      }
      break;

    default:
      return;
    }

  mf_build_check_statement_for (base, limit, iter, locus, dirflag);
}
