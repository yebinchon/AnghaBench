
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;






 int NULL_TREE ;




 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_VECTOR_SUBPARTS (int ) ;

 int build_complex (int ,int ,int ) ;
 int build_int_cst (int ,int) ;
 int build_real (int ,int ) ;
 int build_vector (int ,int ) ;
 int dconst1 ;
 int fold_convert (int ,int ) ;
 int gcc_unreachable () ;
 int integer_zero_node ;
 int tree_cons (int ,int ,int ) ;

tree
build_one_cst (tree type)
{
  switch (TREE_CODE (type))
    {
    case 133: case 134: case 136:
    case 131: case 129:
    case 132:
      return build_int_cst (type, 1);

    case 130:
      return build_real (type, dconst1);

    case 128:
      {
 tree scalar, cst;
 int i;

 scalar = build_one_cst (TREE_TYPE (type));


 cst = NULL_TREE;
 for (i = TYPE_VECTOR_SUBPARTS (type); --i >= 0; )
   cst = tree_cons (NULL_TREE, scalar, cst);

 return build_vector (type, cst);
      }

    case 135:
      return build_complex (type,
       build_one_cst (TREE_TYPE (type)),
       fold_convert (TREE_TYPE (type), integer_zero_node));

    default:
      gcc_unreachable ();
    }
}
