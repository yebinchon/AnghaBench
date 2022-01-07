
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* variable ;
typedef int htab_t ;
struct TYPE_7__ {int refcount; scalar_t__ n_var_parts; int decl; } ;


 int VARIABLE_HASH_VAL (int ) ;
 TYPE_1__* htab_find_with_hash (int ,int ,int ) ;
 TYPE_1__* pool_alloc (int ) ;
 int var_pool ;
 scalar_t__ variable_different_p (TYPE_1__*,TYPE_1__*,int) ;
 int variable_was_changed (TYPE_1__*,int *) ;

__attribute__((used)) static int
emit_notes_for_differences_1 (void **slot, void *data)
{
  htab_t new_vars = (htab_t) data;
  variable old_var, new_var;

  old_var = *(variable *) slot;
  new_var = htab_find_with_hash (new_vars, old_var->decl,
     VARIABLE_HASH_VAL (old_var->decl));

  if (!new_var)
    {

      variable empty_var;

      empty_var = pool_alloc (var_pool);
      empty_var->decl = old_var->decl;
      empty_var->refcount = 1;
      empty_var->n_var_parts = 0;
      variable_was_changed (empty_var, ((void*)0));
    }
  else if (variable_different_p (old_var, new_var, 1))
    {
      variable_was_changed (new_var, ((void*)0));
    }


  return 1;
}
