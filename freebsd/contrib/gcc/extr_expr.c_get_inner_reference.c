
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int double_int ;
typedef int HOST_WIDE_INT ;




 int BIGGEST_ALIGNMENT ;
 int BITS_PER_UNIT ;

 int BIT_FIELD_REF_UNSIGNED (scalar_t__) ;
 int BLKmode ;

 int DECL_BIT_FIELD (scalar_t__) ;
 scalar_t__ DECL_FIELD_BIT_OFFSET (scalar_t__) ;
 int DECL_MODE (scalar_t__) ;
 scalar_t__ DECL_SIZE (scalar_t__) ;
 int DECL_UNSIGNED (scalar_t__) ;
 int GET_MODE_BITSIZE (int) ;

 int MINUS_EXPR ;
 int MULT_EXPR ;
 scalar_t__ NULL_TREE ;
 int PLUS_EXPR ;

 int STRICT_ALIGNMENT ;
 int TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_THIS_VOLATILE (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 int TYPE_ALIGN (int ) ;
 int TYPE_ALIGN_OK (int ) ;
 int TYPE_MODE (int ) ;
 scalar_t__ TYPE_SIZE (int ) ;
 int TYPE_UNSIGNED (int ) ;

 int VOIDmode ;
 scalar_t__ array_ref_element_size (scalar_t__) ;
 scalar_t__ array_ref_low_bound (scalar_t__) ;
 scalar_t__ bitsize_int (int) ;
 scalar_t__ bitsize_zero_node ;
 scalar_t__ component_ref_field_offset (scalar_t__) ;
 int double_int_add (int ,int ) ;
 scalar_t__ double_int_fits_in_shwi_p (int ) ;
 int double_int_mul (int ,int ) ;
 int double_int_to_shwi (int ) ;
 scalar_t__ fold_build2 (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ fold_convert (int ,scalar_t__) ;
 scalar_t__ host_integerp (scalar_t__,int) ;
 int integer_zerop (scalar_t__) ;
 scalar_t__ size_binop (int ,scalar_t__,scalar_t__) ;
 scalar_t__ size_zero_node ;
 int sizetype ;
 int tree_low_cst (scalar_t__,int) ;
 int tree_to_double_int (scalar_t__) ;
 int uhwi_to_double_int (int ) ;

tree
get_inner_reference (tree exp, HOST_WIDE_INT *pbitsize,
       HOST_WIDE_INT *pbitpos, tree *poffset,
       enum machine_mode *pmode, int *punsignedp,
       int *pvolatilep, bool keep_aligning)
{
  tree size_tree = 0;
  enum machine_mode mode = VOIDmode;
  tree offset = size_zero_node;
  tree bit_offset = bitsize_zero_node;



  if (TREE_CODE (exp) == 131)
    {
      size_tree = DECL_SIZE (TREE_OPERAND (exp, 1));
      if (! DECL_BIT_FIELD (TREE_OPERAND (exp, 1)))
 mode = DECL_MODE (TREE_OPERAND (exp, 1));

      *punsignedp = DECL_UNSIGNED (TREE_OPERAND (exp, 1));
    }
  else if (TREE_CODE (exp) == 132)
    {
      size_tree = TREE_OPERAND (exp, 1);
      *punsignedp = BIT_FIELD_REF_UNSIGNED (exp);
    }
  else
    {
      mode = TYPE_MODE (TREE_TYPE (exp));
      *punsignedp = TYPE_UNSIGNED (TREE_TYPE (exp));

      if (mode == BLKmode)
 size_tree = TYPE_SIZE (TREE_TYPE (exp));
      else
 *pbitsize = GET_MODE_BITSIZE (mode);
    }

  if (size_tree != 0)
    {
      if (! host_integerp (size_tree, 1))
 mode = BLKmode, *pbitsize = -1;
      else
 *pbitsize = tree_low_cst (size_tree, 1);
    }

  *pmode = mode;



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




     if (this_offset == 0)
       break;

     offset = size_binop (PLUS_EXPR, offset, this_offset);
     bit_offset = size_binop (PLUS_EXPR, bit_offset,
         DECL_FIELD_BIT_OFFSET (field));


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

     offset = size_binop (PLUS_EXPR, offset,
            size_binop (MULT_EXPR,
          fold_convert (sizetype, index),
          unit_size));
   }
   break;

 case 129:
   break;

 case 130:
   bit_offset = size_binop (PLUS_EXPR, bit_offset,
       bitsize_int (*pbitsize));
   break;

 case 128:
   if (keep_aligning && STRICT_ALIGNMENT
       && (TYPE_ALIGN (TREE_TYPE (exp))
        > TYPE_ALIGN (TREE_TYPE (TREE_OPERAND (exp, 0))))
       && (TYPE_ALIGN (TREE_TYPE (TREE_OPERAND (exp, 0)))
    < BIGGEST_ALIGNMENT)
       && (TYPE_ALIGN_OK (TREE_TYPE (exp))
    || TYPE_ALIGN_OK (TREE_TYPE (TREE_OPERAND (exp, 0)))))
     goto done;
   break;

 default:
   goto done;
 }


      if (TREE_THIS_VOLATILE (exp))
 *pvolatilep = 1;

      exp = TREE_OPERAND (exp, 0);
    }
 done:




  if (host_integerp (offset, 0))
    {
      double_int tem = double_int_mul (tree_to_double_int (offset),
           uhwi_to_double_int (BITS_PER_UNIT));
      tem = double_int_add (tem, tree_to_double_int (bit_offset));
      if (double_int_fits_in_shwi_p (tem))
 {
   *pbitpos = double_int_to_shwi (tem);
   *poffset = NULL_TREE;
   return exp;
 }
    }


  *pbitpos = tree_low_cst (bit_offset, 0);
  *poffset = offset;

  return exp;
}
