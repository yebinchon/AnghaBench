
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int DECL_NAME (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int bind (int ,scalar_t__,scalar_t__,int,int) ;
 scalar_t__ current_scope ;
 scalar_t__ file_scope ;
 int push_scope () ;
 int start_fname_decls () ;
 scalar_t__ visible_builtins ;

void
push_file_scope (void)
{
  tree decl;

  if (file_scope)
    return;

  push_scope ();
  file_scope = current_scope;

  start_fname_decls ();

  for (decl = visible_builtins; decl; decl = TREE_CHAIN (decl))
    bind (DECL_NAME (decl), decl, file_scope,
                 0, 1);
}
