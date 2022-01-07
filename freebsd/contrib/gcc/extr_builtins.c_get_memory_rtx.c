
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
typedef int rtx ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ ARRAY_REF ;
 scalar_t__ BITS_PER_UNIT ;
 int BLKmode ;
 scalar_t__ COMPONENT_REF ;
 scalar_t__ CONST_INT ;
 scalar_t__ CONVERT_EXPR ;
 int DECL_BIT_FIELD (int *) ;
 int * DECL_FIELD_BIT_OFFSET (int *) ;
 int * DECL_FIELD_OFFSET (int *) ;
 int EXPAND_NORMAL ;
 int GEN_INT (scalar_t__) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int INDIRECT_REF ;
 scalar_t__ INTVAL (scalar_t__) ;
 int * MEM_EXPR (int ) ;
 scalar_t__ MEM_OFFSET (int ) ;
 scalar_t__ NON_LVALUE_EXPR ;
 scalar_t__ NOP_EXPR ;
 int NULL_RTX ;
 scalar_t__ POINTER_TYPE_P (int *) ;
 scalar_t__ SAVE_EXPR ;
 scalar_t__ TREE_CODE (int *) ;
 int * TREE_OPERAND (int *,int) ;
 int * TREE_TYPE (int *) ;
 int * TYPE_SIZE_UNIT (int *) ;
 scalar_t__ VIEW_CONVERT_EXPR ;
 int * build1 (int ,int *,int *) ;
 int expand_expr (int *,int ,int ,int ) ;
 int gcc_assert (int) ;
 int gen_rtx_MEM (int ,int ) ;
 scalar_t__ host_integerp (int *,int ) ;
 int memory_address (int ,int ) ;
 int ptr_mode ;
 int set_mem_alias_set (int ,int ) ;
 int set_mem_attributes (int ,int *,int ) ;
 int set_mem_expr (int ,int *) ;
 int set_mem_offset (int ,int ) ;
 int set_mem_size (int ,int ) ;
 scalar_t__ tree_low_cst (int *,int) ;

__attribute__((used)) static rtx
get_memory_rtx (tree exp, tree len)
{
  rtx addr = expand_expr (exp, NULL_RTX, ptr_mode, EXPAND_NORMAL);
  rtx mem = gen_rtx_MEM (BLKmode, memory_address (BLKmode, addr));




  while ((TREE_CODE (exp) == NOP_EXPR || TREE_CODE (exp) == CONVERT_EXPR
   || TREE_CODE (exp) == NON_LVALUE_EXPR)
  && POINTER_TYPE_P (TREE_TYPE (TREE_OPERAND (exp, 0))))
    exp = TREE_OPERAND (exp, 0);

  if (TREE_CODE (exp) == ADDR_EXPR)
    exp = TREE_OPERAND (exp, 0);
  else if (POINTER_TYPE_P (TREE_TYPE (exp)))
    exp = build1 (INDIRECT_REF, TREE_TYPE (TREE_TYPE (exp)), exp);
  else
    exp = ((void*)0);




  if (exp)
    {
      set_mem_attributes (mem, exp, 0);






      if (MEM_EXPR (mem) && TREE_CODE (MEM_EXPR (mem)) == COMPONENT_REF)
 {
   tree mem_expr = MEM_EXPR (mem);
   HOST_WIDE_INT offset = -1, length = -1;
   tree inner = exp;

   while (TREE_CODE (inner) == ARRAY_REF
   || TREE_CODE (inner) == NOP_EXPR
   || TREE_CODE (inner) == CONVERT_EXPR
   || TREE_CODE (inner) == NON_LVALUE_EXPR
   || TREE_CODE (inner) == VIEW_CONVERT_EXPR
   || TREE_CODE (inner) == SAVE_EXPR)
     inner = TREE_OPERAND (inner, 0);

   gcc_assert (TREE_CODE (inner) == COMPONENT_REF);

   if (MEM_OFFSET (mem)
       && GET_CODE (MEM_OFFSET (mem)) == CONST_INT)
     offset = INTVAL (MEM_OFFSET (mem));

   if (offset >= 0 && len && host_integerp (len, 0))
     length = tree_low_cst (len, 0);

   while (TREE_CODE (inner) == COMPONENT_REF)
     {
       tree field = TREE_OPERAND (inner, 1);
       gcc_assert (! DECL_BIT_FIELD (field));
       gcc_assert (TREE_CODE (mem_expr) == COMPONENT_REF);
       gcc_assert (field == TREE_OPERAND (mem_expr, 1));

       if (length >= 0
    && TYPE_SIZE_UNIT (TREE_TYPE (inner))
    && host_integerp (TYPE_SIZE_UNIT (TREE_TYPE (inner)), 0))
  {
    HOST_WIDE_INT size
      = tree_low_cst (TYPE_SIZE_UNIT (TREE_TYPE (inner)), 0);



    if (offset <= size
        && length <= size
        && offset + length <= size)
      break;
  }

       if (offset >= 0
    && host_integerp (DECL_FIELD_OFFSET (field), 0))
  offset += tree_low_cst (DECL_FIELD_OFFSET (field), 0)
     + tree_low_cst (DECL_FIELD_BIT_OFFSET (field), 1)
       / BITS_PER_UNIT;
       else
  {
    offset = -1;
    length = -1;
  }

       mem_expr = TREE_OPERAND (mem_expr, 0);
       inner = TREE_OPERAND (inner, 0);
     }

   if (mem_expr == ((void*)0))
     offset = -1;
   if (mem_expr != MEM_EXPR (mem))
     {
       set_mem_expr (mem, mem_expr);
       set_mem_offset (mem, offset >= 0 ? GEN_INT (offset) : NULL_RTX);
     }
 }
      set_mem_alias_set (mem, 0);
      set_mem_size (mem, NULL_RTX);
    }

  return mem;
}
