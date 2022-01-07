
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* variable ;
typedef scalar_t__ htab_t ;
typedef int hashval_t ;
struct TYPE_4__ {scalar_t__ n_var_parts; int refcount; int decl; } ;


 int INSERT ;
 int NO_INSERT ;
 int VARIABLE_HASH_VAL (int ) ;
 scalar_t__ changed_variables ;
 scalar_t__ emit_notes ;
 int gcc_assert (scalar_t__) ;
 int htab_clear_slot (scalar_t__,void**) ;
 void** htab_find_slot_with_hash (scalar_t__,int ,int ,int ) ;
 TYPE_1__* pool_alloc (int ) ;
 int var_pool ;

__attribute__((used)) static void
variable_was_changed (variable var, htab_t htab)
{
  hashval_t hash = VARIABLE_HASH_VAL (var->decl);

  if (emit_notes)
    {
      variable *slot;

      slot = (variable *) htab_find_slot_with_hash (changed_variables,
          var->decl, hash, INSERT);

      if (htab && var->n_var_parts == 0)
 {
   variable empty_var;
   void **old;

   empty_var = pool_alloc (var_pool);
   empty_var->decl = var->decl;
   empty_var->refcount = 1;
   empty_var->n_var_parts = 0;
   *slot = empty_var;

   old = htab_find_slot_with_hash (htab, var->decl, hash,
       NO_INSERT);
   if (old)
     htab_clear_slot (htab, old);
 }
      else
 {
   *slot = var;
 }
    }
  else
    {
      gcc_assert (htab);
      if (var->n_var_parts == 0)
 {
   void **slot = htab_find_slot_with_hash (htab, var->decl, hash,
        NO_INSERT);
   if (slot)
     htab_clear_slot (htab, slot);
 }
    }
}
