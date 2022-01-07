
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {scalar_t__ (* types_compatible_p ) (scalar_t__,scalar_t__) ;} ;


 scalar_t__ ADDR_EXPR ;
 int ARRAY_REF ;
 scalar_t__ ARRAY_TYPE ;
 int INDIRECT_REF ;
 scalar_t__ NULL_TREE ;
 int POINTER_TYPE_P (scalar_t__) ;
 int STRIP_USELESS_TYPE_CONVERSION (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_DOMAIN (scalar_t__) ;
 scalar_t__ TYPE_MIN_VALUE (scalar_t__) ;
 scalar_t__ build1 (int ,scalar_t__,scalar_t__) ;
 scalar_t__ build4 (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 TYPE_1__ lang_hooks ;
 scalar_t__ size_zero_node ;
 scalar_t__ stub1 (scalar_t__,scalar_t__) ;
 scalar_t__ stub2 (scalar_t__,scalar_t__) ;
 scalar_t__ stub3 (scalar_t__,scalar_t__) ;

__attribute__((used)) static tree
fold_indirect_ref_rhs (tree t)
{
  tree type = TREE_TYPE (TREE_TYPE (t));
  tree sub = t;
  tree subtype;

  STRIP_USELESS_TYPE_CONVERSION (sub);
  subtype = TREE_TYPE (sub);
  if (!POINTER_TYPE_P (subtype))
    return NULL_TREE;

  if (TREE_CODE (sub) == ADDR_EXPR)
    {
      tree op = TREE_OPERAND (sub, 0);
      tree optype = TREE_TYPE (op);

      if (lang_hooks.types_compatible_p (type, optype))
        return op;

      else if (TREE_CODE (optype) == ARRAY_TYPE
        && lang_hooks.types_compatible_p (type, TREE_TYPE (optype)))
       {
         tree type_domain = TYPE_DOMAIN (optype);
         tree min_val = size_zero_node;
         if (type_domain && TYPE_MIN_VALUE (type_domain))
           min_val = TYPE_MIN_VALUE (type_domain);
         return build4 (ARRAY_REF, type, op, min_val, NULL_TREE, NULL_TREE);
       }
    }


  if (TREE_CODE (TREE_TYPE (subtype)) == ARRAY_TYPE
      && lang_hooks.types_compatible_p (type, TREE_TYPE (TREE_TYPE (subtype))))
    {
      tree type_domain;
      tree min_val = size_zero_node;
      tree osub = sub;
      sub = fold_indirect_ref_rhs (sub);
      if (! sub)
 sub = build1 (INDIRECT_REF, TREE_TYPE (subtype), osub);
      type_domain = TYPE_DOMAIN (TREE_TYPE (sub));
      if (type_domain && TYPE_MIN_VALUE (type_domain))
        min_val = TYPE_MIN_VALUE (type_domain);
      return build4 (ARRAY_REF, type, sub, min_val, NULL_TREE, NULL_TREE);
    }

  return NULL_TREE;
}
