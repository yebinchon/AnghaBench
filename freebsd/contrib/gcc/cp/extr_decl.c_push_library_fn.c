
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int build_library_fn (int ,int ) ;
 int pushdecl_top_level (int ) ;

tree
push_library_fn (tree name, tree type)
{
  tree fn = build_library_fn (name, type);
  pushdecl_top_level (fn);
  return fn;
}
