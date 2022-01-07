
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int ansi_opname (int) ;
 int build_cp_library_fn (int ,int,int ) ;
 int pushdecl (int ) ;

__attribute__((used)) static tree
push_cp_library_fn (enum tree_code operator_code, tree type)
{
  tree fn = build_cp_library_fn (ansi_opname (operator_code),
     operator_code,
     type);
  pushdecl (fn);
  return fn;
}
