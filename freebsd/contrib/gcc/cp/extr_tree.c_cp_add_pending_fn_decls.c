
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int varray_type ;
typedef scalar_t__ tree ;
struct saved_scope {scalar_t__ function_decl; struct saved_scope* prev; } ;


 int VARRAY_PUSH_TREE (int ,scalar_t__) ;
 struct saved_scope* scope_chain ;

tree
cp_add_pending_fn_decls (void* fns_p, tree prev_fn)
{
  varray_type *fnsp = (varray_type *)fns_p;
  struct saved_scope *s;

  for (s = scope_chain; s; s = s->prev)
    if (s->function_decl && s->function_decl != prev_fn)
      {
 VARRAY_PUSH_TREE (*fnsp, s->function_decl);
 prev_fn = s->function_decl;
      }

  return prev_fn;
}
