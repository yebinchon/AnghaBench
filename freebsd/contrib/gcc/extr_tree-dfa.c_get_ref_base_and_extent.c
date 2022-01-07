
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;





 int BLKmode ;

 scalar_t__ DECL_FIELD_BIT_OFFSET (scalar_t__) ;
 scalar_t__ DECL_SIZE (scalar_t__) ;
 int GET_MODE_BITSIZE (int) ;

 int INTEGER_CST ;
 int MINUS_EXPR ;
 int MULT_EXPR ;
 scalar_t__ NULL_TREE ;
 int PLUS_EXPR ;

 int SSA_VAR_P (scalar_t__) ;
 int TREE_CODE (scalar_t__) ;
 int TREE_INT_CST_LOW (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_TYPE (scalar_t__) ;
 int TYPE_MODE (int ) ;
 scalar_t__ TYPE_SIZE (int ) ;

 scalar_t__ array_ref_element_size (scalar_t__) ;
 scalar_t__ array_ref_low_bound (scalar_t__) ;
 scalar_t__ bitsize_int (int) ;
 scalar_t__ bitsize_unit_node ;
 scalar_t__ bitsize_zero_node ;
 int bitsizetype ;
 scalar_t__ component_ref_field_offset (scalar_t__) ;
 scalar_t__ fold_build2 (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ fold_convert (int ,scalar_t__) ;
 int gcc_assert (int) ;
 scalar_t__ host_integerp (scalar_t__,int) ;
 int integer_zerop (scalar_t__) ;
 scalar_t__ size_binop (int ,scalar_t__,scalar_t__) ;
 int sizetype ;

tree
get_ref_base_and_extent (tree exp, HOST_WIDE_INT *poffset,
    HOST_WIDE_INT *psize,
    HOST_WIDE_INT *pmax_size)
{
  HOST_WIDE_INT bitsize = -1;
  HOST_WIDE_INT maxsize = -1;
  tree size_tree = NULL_TREE;
  tree bit_offset = bitsize_zero_node;
  bool seen_variable_array_ref = 0;

  gcc_assert (!SSA_VAR_P (exp));


  if (TREE_CODE (exp) == 131)
    size_tree = DECL_SIZE (TREE_OPERAND (exp, 1));
  else if (TREE_CODE (exp) == 132)
    size_tree = TREE_OPERAND (exp, 1);
  else
    {
      enum machine_mode mode = TYPE_MODE (TREE_TYPE (exp));
      if (mode == BLKmode)
 size_tree = TYPE_SIZE (TREE_TYPE (exp));
      else
 bitsize = GET_MODE_BITSIZE (mode);
    }
  if (size_tree != NULL_TREE)
    {
      if (! host_integerp (size_tree, 1))
 bitsize = -1;
      else
 bitsize = TREE_INT_CST_LOW (size_tree);
    }



  maxsize = bitsize;



  while (1)
    {
      switch (TREE_CODE (exp))
 {
 case 132:
   bit_offset = size_binop (PLUS_EXPR, bit_offset,
       TREE_OPERAND (exp, 2));
   break;

 case 131:
   {
     tree field = TREE_OPERAND (exp, 1);
     tree this_offset = component_ref_field_offset (exp);

     if (this_offset && TREE_CODE (this_offset) == INTEGER_CST)
       {
  this_offset = size_binop (MULT_EXPR,
       fold_convert (bitsizetype,
       this_offset),
       bitsize_unit_node);
  bit_offset = size_binop (PLUS_EXPR,
             bit_offset, this_offset);
  bit_offset = size_binop (PLUS_EXPR, bit_offset,
      DECL_FIELD_BIT_OFFSET (field));
       }
     else
       {
  tree csize = TYPE_SIZE (TREE_TYPE (TREE_OPERAND (exp, 0)));



  if (maxsize != -1
      && csize && host_integerp (csize, 1))
    {
      maxsize = (TREE_INT_CST_LOW (csize)
          - TREE_INT_CST_LOW (bit_offset));
    }
  else
    maxsize = -1;
       }
   }
   break;

 case 133:
 case 134:
   {
     tree index = TREE_OPERAND (exp, 1);
     tree low_bound = array_ref_low_bound (exp);
     tree unit_size = array_ref_element_size (exp);

     if (! integer_zerop (low_bound))
       index = fold_build2 (MINUS_EXPR, TREE_TYPE (index),
       index, low_bound);
     index = size_binop (MULT_EXPR,
    fold_convert (sizetype, index), unit_size);
     if (TREE_CODE (index) == INTEGER_CST)
       {
  index = size_binop (MULT_EXPR,
        fold_convert (bitsizetype, index),
        bitsize_unit_node);
  bit_offset = size_binop (PLUS_EXPR, bit_offset, index);




  seen_variable_array_ref = 0;
       }
     else
       {
  tree asize = TYPE_SIZE (TREE_TYPE (TREE_OPERAND (exp, 0)));



  if (maxsize != -1
      && asize && host_integerp (asize, 1))
    {
      maxsize = (TREE_INT_CST_LOW (asize)
          - TREE_INT_CST_LOW (bit_offset));
    }
  else
    maxsize = -1;



  seen_variable_array_ref = 1;
       }
   }
   break;

 case 129:
   break;

 case 130:
   bit_offset = size_binop (PLUS_EXPR, bit_offset,
       bitsize_int (bitsize));
   break;

 case 128:

   break;

 default:
   goto done;
 }

      exp = TREE_OPERAND (exp, 0);
    }
 done:
  if (seen_variable_array_ref
      && maxsize != -1
      && host_integerp (TYPE_SIZE (TREE_TYPE (exp)), 1)
      && TREE_INT_CST_LOW (bit_offset) + maxsize
  == TREE_INT_CST_LOW (TYPE_SIZE (TREE_TYPE (exp))))
    maxsize = -1;




  *poffset = TREE_INT_CST_LOW (bit_offset);
  *psize = bitsize;
  *pmax_size = maxsize;

  return exp;
}
