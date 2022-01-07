
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int HOST_WIDE_INT ;


 scalar_t__ AGGREGATE_TYPE_P (int ) ;
 int BITS_PER_WORD ;
 int BIT_AND_EXPR ;
 size_t BUILT_IN_MEMCPY ;
 scalar_t__ BYTES_BIG_ENDIAN ;
 int MODIFY_EXPR ;
 int NULL_TREE ;
 int PLUS_EXPR ;
 scalar_t__ TARGET_ARCH64 ;
 int TYPE_ALIGN (int ) ;
 int TYPE_MODE (int ) ;
 int UNITS_PER_WORD ;
 int build2 (int ,int ,int ,int ) ;
 int build_fold_addr_expr (int ) ;
 int build_function_call_expr (int ,int ) ;
 int build_pointer_type (int ) ;
 int build_va_arg_indirect_ref (int ) ;
 int create_tmp_var (int ,char*) ;
 int fb_rvalue ;
 int fold (int ) ;
 int fold_convert (int ,int ) ;
 int gimplify_and_add (int ,int *) ;
 int gimplify_expr (int *,int *,int *,int ,int ) ;
 int * implicit_built_in_decls ;
 int int_size_in_bytes (int ) ;
 int is_gimple_val ;
 scalar_t__ pass_by_reference (int *,int ,int ,int) ;
 int ptr_type_node ;
 int size_int (int) ;
 int ssize_int (int) ;
 int tree_cons (int ,int ,int ) ;

__attribute__((used)) static tree
sparc_gimplify_va_arg (tree valist, tree type, tree *pre_p, tree *post_p)
{
  HOST_WIDE_INT size, rsize, align;
  tree addr, incr;
  bool indirect;
  tree ptrtype = build_pointer_type (type);

  if (pass_by_reference (((void*)0), TYPE_MODE (type), type, 0))
    {
      indirect = 1;
      size = rsize = UNITS_PER_WORD;
      align = 0;
    }
  else
    {
      indirect = 0;
      size = int_size_in_bytes (type);
      rsize = (size + UNITS_PER_WORD - 1) & -UNITS_PER_WORD;
      align = 0;

      if (TARGET_ARCH64)
 {

   if (TYPE_ALIGN (type) >= 2 * (unsigned) BITS_PER_WORD)
     align = 2 * UNITS_PER_WORD;



   if (AGGREGATE_TYPE_P (type))
     {
       if (size == 0)
  size = rsize = UNITS_PER_WORD;
       else
  size = rsize;
     }
 }
    }

  incr = valist;
  if (align)
    {
      incr = fold (build2 (PLUS_EXPR, ptr_type_node, incr,
      ssize_int (align - 1)));
      incr = fold (build2 (BIT_AND_EXPR, ptr_type_node, incr,
      ssize_int (-align)));
    }

  gimplify_expr (&incr, pre_p, post_p, is_gimple_val, fb_rvalue);
  addr = incr;

  if (BYTES_BIG_ENDIAN && size < rsize)
    addr = fold (build2 (PLUS_EXPR, ptr_type_node, incr,
    ssize_int (rsize - size)));

  if (indirect)
    {
      addr = fold_convert (build_pointer_type (ptrtype), addr);
      addr = build_va_arg_indirect_ref (addr);
    }




  else if (align == 0
    && TYPE_ALIGN (type) > BITS_PER_WORD)
    {
      tree tmp = create_tmp_var (type, "va_arg_tmp");
      tree dest_addr = build_fold_addr_expr (tmp);

      tree copy = build_function_call_expr
 (implicit_built_in_decls[BUILT_IN_MEMCPY],
  tree_cons (NULL_TREE, dest_addr,
      tree_cons (NULL_TREE, addr,
          tree_cons (NULL_TREE, size_int (rsize),
       NULL_TREE))));

      gimplify_and_add (copy, pre_p);
      addr = dest_addr;
    }
  else
    addr = fold_convert (ptrtype, addr);

  incr = fold (build2 (PLUS_EXPR, ptr_type_node, incr, ssize_int (rsize)));
  incr = build2 (MODIFY_EXPR, ptr_type_node, valist, incr);
  gimplify_and_add (incr, post_p);

  return build_va_arg_indirect_ref (addr);
}
