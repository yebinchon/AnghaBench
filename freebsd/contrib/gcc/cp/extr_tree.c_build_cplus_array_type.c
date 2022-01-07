
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TYPE_UNQUALIFIED ;
 int build_cplus_array_type_1 (int ,int ) ;
 int cp_build_qualified_type (int ,int) ;
 int cp_type_quals (int ) ;

tree
build_cplus_array_type (tree elt_type, tree index_type)
{
  tree t;
  int type_quals = cp_type_quals (elt_type);

  if (type_quals != TYPE_UNQUALIFIED)
    elt_type = cp_build_qualified_type (elt_type, TYPE_UNQUALIFIED);

  t = build_cplus_array_type_1 (elt_type, index_type);

  if (type_quals != TYPE_UNQUALIFIED)
    t = cp_build_qualified_type (t, type_quals);

  return t;
}
