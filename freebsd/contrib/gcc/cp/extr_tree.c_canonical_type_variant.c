
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TYPE_MAIN_VARIANT (int ) ;
 int cp_build_qualified_type (int ,int ) ;
 int cp_type_quals (int ) ;

tree
canonical_type_variant (tree t)
{
  return cp_build_qualified_type (TYPE_MAIN_VARIANT (t), cp_type_quals (t));
}
