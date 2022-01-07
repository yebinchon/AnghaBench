
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ build_variant_type_copy (scalar_t__) ;
 scalar_t__ get_qualified_type (scalar_t__,int) ;
 int set_type_quals (scalar_t__,int) ;

tree
build_qualified_type (tree type, int type_quals)
{
  tree t;


  t = get_qualified_type (type, type_quals);


  if (!t)
    {
      t = build_variant_type_copy (type);
      set_type_quals (t, type_quals);
    }

  return t;
}
