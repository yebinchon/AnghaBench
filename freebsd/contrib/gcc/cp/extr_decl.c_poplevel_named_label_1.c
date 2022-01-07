
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct named_label_use_entry {int in_omp_scope; scalar_t__ names_in_scope; struct cp_binding_level* binding_level; struct named_label_use_entry* next; } ;
struct named_label_entry {int in_try_scope; int in_catch_scope; int in_omp_scope; struct named_label_use_entry* uses; scalar_t__ names_in_scope; struct cp_binding_level* binding_level; int bad_decls; } ;
struct cp_binding_level {int kind; scalar_t__ names; struct cp_binding_level* level_chain; } ;


 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ decl_jump_unsafe (scalar_t__) ;



 int tree_cons (int *,scalar_t__,int ) ;

__attribute__((used)) static int
poplevel_named_label_1 (void **slot, void *data)
{
  struct named_label_entry *ent = (struct named_label_entry *) *slot;
  struct cp_binding_level *bl = (struct cp_binding_level *) data;
  struct cp_binding_level *obl = bl->level_chain;

  if (ent->binding_level == bl)
    {
      tree decl;

      for (decl = ent->names_in_scope; decl; decl = TREE_CHAIN (decl))
 if (decl_jump_unsafe (decl))
   ent->bad_decls = tree_cons (((void*)0), decl, ent->bad_decls);

      ent->binding_level = obl;
      ent->names_in_scope = obl->names;
      switch (bl->kind)
 {
 case 128:
   ent->in_try_scope = 1;
   break;
 case 130:
   ent->in_catch_scope = 1;
   break;
 case 129:
   ent->in_omp_scope = 1;
   break;
 default:
   break;
 }
    }
  else if (ent->uses)
    {
      struct named_label_use_entry *use;

      for (use = ent->uses; use ; use = use->next)
 if (use->binding_level == bl)
   {
     use->binding_level = obl;
     use->names_in_scope = obl->names;
     if (bl->kind == 129)
       use->in_omp_scope = 1;
   }
    }

  return 1;
}
