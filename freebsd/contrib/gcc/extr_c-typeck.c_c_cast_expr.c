
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct c_type_name {int dummy; } ;


 scalar_t__ INTEGER_CST ;
 scalar_t__ TREE_CODE (int ) ;
 int build_c_cast (int ,int ) ;
 int groktypename (struct c_type_name*) ;
 int warn_strict_prototypes ;

tree
c_cast_expr (struct c_type_name *type_name, tree expr)
{
  tree type;
  int saved_wsp = warn_strict_prototypes;



  if (TREE_CODE (expr) == INTEGER_CST)
    warn_strict_prototypes = 0;
  type = groktypename (type_name);
  warn_strict_prototypes = saved_wsp;

  return build_c_cast (type, expr);
}
