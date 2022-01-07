
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;







 unsigned int DECL_ALIGN (int ) ;



 unsigned int MAX (unsigned int,unsigned int) ;
 unsigned int MIN (unsigned int,unsigned int) ;







 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 unsigned int TYPE_ALIGN (int ) ;


 int gcc_assert (int) ;

unsigned int
expr_align (tree t)
{
  unsigned int align0, align1;

  switch (TREE_CODE (t))
    {
    case 134: case 140: case 135:


      align0 = expr_align (TREE_OPERAND (t, 0));
      align1 = TYPE_ALIGN (TREE_TYPE (t));
      return MAX (align0, align1);

    case 131: case 143: case 136:
    case 138: case 130: case 128:
    case 144:

      return expr_align (TREE_OPERAND (t, 0));

    case 142:


      align0 = expr_align (TREE_OPERAND (t, 1));
      align1 = expr_align (TREE_OPERAND (t, 2));
      return MIN (align0, align1);



    case 137: case 141:
    case 129: case 133: case 132:
    case 139:
      gcc_assert (DECL_ALIGN (t) != 0);
      return DECL_ALIGN (t);

    default:
      break;
    }


  return TYPE_ALIGN (TREE_TYPE (t));
}
