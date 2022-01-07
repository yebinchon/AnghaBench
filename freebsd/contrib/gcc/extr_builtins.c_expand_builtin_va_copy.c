
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;
typedef int TREE_SIDE_EFFECTS ;


 scalar_t__ ARRAY_TYPE ;
 int BLKmode ;
 int BLOCK_OP_NORMAL ;
 int EXPAND_NORMAL ;
 int MODIFY_EXPR ;
 int NULL_RTX ;
 int Pmode ;
 int TREE_CHAIN (int) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int) ;
 int TREE_VALUE (int) ;
 int TYPE_ALIGN (int ) ;
 int TYPE_SIZE_UNIT (int ) ;
 int VOIDmode ;
 int build2 (int ,int ,int,int) ;
 int const0_rtx ;
 int convert_memory_address (int ,int ) ;
 int emit_block_move (int ,int ,int ,int ) ;
 int expand_expr (int,int ,int ,int ) ;
 int gen_rtx_MEM (int ,int ) ;
 int get_alias_set (int) ;
 int set_mem_alias_set (int ,int ) ;
 int set_mem_align (int ,int ) ;
 int stabilize_va_list (int,int) ;
 int va_list_type_node ;

__attribute__((used)) static rtx
expand_builtin_va_copy (tree arglist)
{
  tree dst, src, t;

  dst = TREE_VALUE (arglist);
  src = TREE_VALUE (TREE_CHAIN (arglist));

  dst = stabilize_va_list (dst, 1);
  src = stabilize_va_list (src, 0);

  if (TREE_CODE (va_list_type_node) != ARRAY_TYPE)
    {
      t = build2 (MODIFY_EXPR, va_list_type_node, dst, src);
      TREE_SIDE_EFFECTS (t) = 1;
      expand_expr (t, const0_rtx, VOIDmode, EXPAND_NORMAL);
    }
  else
    {
      rtx dstb, srcb, size;


      dstb = expand_expr (dst, NULL_RTX, Pmode, EXPAND_NORMAL);
      srcb = expand_expr (src, NULL_RTX, Pmode, EXPAND_NORMAL);
      size = expand_expr (TYPE_SIZE_UNIT (va_list_type_node), NULL_RTX,
     VOIDmode, EXPAND_NORMAL);

      dstb = convert_memory_address (Pmode, dstb);
      srcb = convert_memory_address (Pmode, srcb);


      dstb = gen_rtx_MEM (BLKmode, dstb);
      set_mem_alias_set (dstb, get_alias_set (TREE_TYPE (TREE_TYPE (dst))));
      set_mem_align (dstb, TYPE_ALIGN (va_list_type_node));
      srcb = gen_rtx_MEM (BLKmode, srcb);
      set_mem_alias_set (srcb, get_alias_set (TREE_TYPE (TREE_TYPE (src))));
      set_mem_align (srcb, TYPE_ALIGN (va_list_type_node));


      emit_block_move (dstb, srcb, size, BLOCK_OP_NORMAL);
    }

  return const0_rtx;
}
