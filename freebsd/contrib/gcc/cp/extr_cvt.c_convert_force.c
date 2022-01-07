
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 scalar_t__ ADDR_EXPR ;
 int CONV_C_CAST ;
 int LOOKUP_COMPLAIN ;
 int LOOKUP_NORMAL ;
 scalar_t__ METHOD_TYPE ;
 int NULL_TREE ;
 int POINTER_TYPE ;
 int REFERENCE_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_PTRMEMFUNC_FN_TYPE (int ) ;
 scalar_t__ TYPE_PTRMEMFUNC_P (int ) ;
 int build_ptrmemfunc (int ,int ,int,int) ;
 int convert_to_pointer_force (int ,int ) ;
 int convert_to_reference (int ,int ,int,int ,int ) ;
 int fold_if_not_in_template (int ) ;
 scalar_t__ integer_zerop (int ) ;
 int ocp_convert (int ,int ,int,int ) ;

tree
convert_force (tree type, tree expr, int convtype)
{
  tree e = expr;
  enum tree_code code = TREE_CODE (type);

  if (code == REFERENCE_TYPE)
    return (fold_if_not_in_template
     (convert_to_reference (type, e, CONV_C_CAST, LOOKUP_COMPLAIN,
       NULL_TREE)));

  if (code == POINTER_TYPE)
    return fold_if_not_in_template (convert_to_pointer_force (type, e));


  if (((TREE_CODE (TREE_TYPE (e)) == POINTER_TYPE && TREE_CODE (e) == ADDR_EXPR
 && TREE_CODE (TREE_TYPE (e)) == POINTER_TYPE
 && TREE_CODE (TREE_TYPE (TREE_TYPE (e))) == METHOD_TYPE)
       || integer_zerop (e)
       || TYPE_PTRMEMFUNC_P (TREE_TYPE (e)))
      && TYPE_PTRMEMFUNC_P (type))

    return build_ptrmemfunc (TYPE_PTRMEMFUNC_FN_TYPE (type), e, 1,
                     1);

  return ocp_convert (type, e, CONV_C_CAST|convtype, LOOKUP_NORMAL);
}
