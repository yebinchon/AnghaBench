
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int varinfo_t ;
typedef int tree ;


 int alias_get_name (int ) ;
 int create_variable_info_for (int ,int ) ;
 int get_varinfo (int ) ;
 void** pointer_map_contains (int ,int ) ;
 int vi_for_tree ;

__attribute__((used)) static varinfo_t
get_vi_for_tree (tree t)
{
  void **slot = pointer_map_contains (vi_for_tree, t);
  if (slot == ((void*)0))
    return get_varinfo (create_variable_info_for (t, alias_get_name (t)));

  return (varinfo_t) *slot;
}
