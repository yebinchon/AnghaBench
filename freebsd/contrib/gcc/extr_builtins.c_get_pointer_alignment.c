
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;



 unsigned int BITS_PER_UNIT ;
 int CONSTANT_ALIGNMENT (int ,unsigned int) ;
 int CONSTANT_CLASS_P (int ) ;

 unsigned int DECL_ALIGN (int ) ;
 int DECL_P (int ) ;
 int const INDIRECT_REF ;
 int MIN (unsigned int,unsigned int) ;
 int const MULT_EXPR ;



 int POINTER_TYPE_P (int ) ;
 int const TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 unsigned int TYPE_ALIGN (int ) ;
 int const VIEW_CONVERT_EXPR ;
 scalar_t__ flag_tree_ter ;
 int get_inner_reference (int ,int*,int*,int *,int*,int*,int*,int) ;
 int handled_component_p (int ) ;
 int host_integerp (int ,int) ;
 scalar_t__ optimize ;
 unsigned int tree_low_cst (int ,int) ;

__attribute__((used)) static int
get_pointer_alignment (tree exp, unsigned int max_align)
{
  unsigned int align, inner;


  if (!(optimize && flag_tree_ter))
    return 0;

  if (!POINTER_TYPE_P (TREE_TYPE (exp)))
    return 0;

  align = TYPE_ALIGN (TREE_TYPE (TREE_TYPE (exp)));
  align = MIN (align, max_align);

  while (1)
    {
      switch (TREE_CODE (exp))
 {
 case 129:
 case 131:
 case 130:
   exp = TREE_OPERAND (exp, 0);
   if (! POINTER_TYPE_P (TREE_TYPE (exp)))
     return align;

   inner = TYPE_ALIGN (TREE_TYPE (TREE_TYPE (exp)));
   align = MIN (inner, max_align);
   break;

 case 128:



   if (! host_integerp (TREE_OPERAND (exp, 1), 1))
     return align;

   while (((tree_low_cst (TREE_OPERAND (exp, 1), 1))
    & (max_align / BITS_PER_UNIT - 1))
   != 0)
     max_align >>= 1;

   exp = TREE_OPERAND (exp, 0);
   break;

 case 132:

   exp = TREE_OPERAND (exp, 0);
   inner = max_align;
   if (handled_component_p (exp))
     {
       HOST_WIDE_INT bitsize, bitpos;
       tree offset;
       enum machine_mode mode;
       int unsignedp, volatilep;

       exp = get_inner_reference (exp, &bitsize, &bitpos, &offset,
      &mode, &unsignedp, &volatilep, 1);
       if (bitpos)
  inner = MIN (inner, (unsigned) (bitpos & -bitpos));
       if (offset && TREE_CODE (offset) == 128
    && host_integerp (TREE_OPERAND (offset, 1), 1))
         {


    unsigned offset_bits
      = ((unsigned) tree_low_cst (TREE_OPERAND (offset, 1), 1)
         * BITS_PER_UNIT);

    if (offset_bits)
      inner = MIN (inner, (offset_bits & -offset_bits));
    offset = TREE_OPERAND (offset, 0);
  }
       if (offset && TREE_CODE (offset) == MULT_EXPR
    && host_integerp (TREE_OPERAND (offset, 1), 1))
         {


    unsigned offset_factor
      = ((unsigned) tree_low_cst (TREE_OPERAND (offset, 1), 1)
         * BITS_PER_UNIT);

    if (offset_factor)
      inner = MIN (inner, (offset_factor & -offset_factor));
  }
       else if (offset)
  inner = MIN (inner, BITS_PER_UNIT);
     }
   if (DECL_P (exp))
     align = MIN (inner, DECL_ALIGN (exp));




   else if (TREE_CODE (exp) == VIEW_CONVERT_EXPR
     || TREE_CODE (exp) == INDIRECT_REF)
     align = MIN (TYPE_ALIGN (TREE_TYPE (exp)), inner);
   else
     align = MIN (align, inner);
   return MIN (align, max_align);

 default:
   return align;
 }
    }
}
