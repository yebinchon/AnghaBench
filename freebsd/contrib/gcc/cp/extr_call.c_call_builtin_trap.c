
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;


 size_t BUILT_IN_TRAP ;
 int NULL_TREE ;
 int * build_call (int *,int ) ;
 int gcc_assert (int ) ;
 int ** implicit_built_in_decls ;

__attribute__((used)) static tree
call_builtin_trap (void)
{
  tree fn = implicit_built_in_decls[BUILT_IN_TRAP];

  gcc_assert (fn != ((void*)0));
  fn = build_call (fn, NULL_TREE);
  return fn;
}
