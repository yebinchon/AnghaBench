
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_3__ {scalar_t__ (* type_for_size ) (int ,int ) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;




 int CONVERT_EXPR ;


 int NOP_EXPR ;
 int POINTER_SIZE ;


 int const TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_CONSTANT_OVERFLOW (scalar_t__) ;
 scalar_t__ TREE_OVERFLOW (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TYPE_PRECISION (scalar_t__) ;
 int VOID_TYPE_P (scalar_t__) ;
 scalar_t__ build_int_cst (scalar_t__,int ) ;
 int error (char*) ;
 scalar_t__ fold_build1 (int ,scalar_t__,scalar_t__) ;
 scalar_t__ force_fit_type (scalar_t__,int ,scalar_t__,scalar_t__) ;
 scalar_t__ integer_zero_node ;
 scalar_t__ integer_zerop (scalar_t__) ;
 TYPE_2__ lang_hooks ;
 int objc_is_id (scalar_t__) ;
 scalar_t__ stub1 (int ,int ) ;

tree
convert_to_pointer (tree type, tree expr)
{
  if (TREE_TYPE (expr) == type)
    return expr;

  if (integer_zerop (expr))
    {
      tree t = build_int_cst (type, 0);
      if (TREE_OVERFLOW (expr) || TREE_CONSTANT_OVERFLOW (expr))
 t = force_fit_type (t, 0, TREE_OVERFLOW (expr),
       TREE_CONSTANT_OVERFLOW (expr));
      return t;
    }

  switch (TREE_CODE (TREE_TYPE (expr)))
    {
    case 129:
    case 128:
      return fold_build1 (NOP_EXPR, type, expr);

    case 130:
    case 131:
    case 132:
      if (TYPE_PRECISION (TREE_TYPE (expr)) != POINTER_SIZE)
 expr = fold_build1 (NOP_EXPR,
        lang_hooks.types.type_for_size (POINTER_SIZE, 0),
       expr);
      return fold_build1 (CONVERT_EXPR, type, expr);


    case 133:

 if (objc_is_id (type)
  || (TREE_CODE (type) == 129 && VOID_TYPE_P (TREE_TYPE (type))))

  return fold_build1 (NOP_EXPR, type, expr);

      default:
 error ("cannot convert to a pointer type");
 return convert_to_pointer (type, integer_zero_node);
    }
}
