
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* variable ;
typedef int htab_t ;
struct TYPE_4__ {int decl; } ;


 int VARIABLE_HASH_VAL (int ) ;
 TYPE_1__* htab_find_with_hash (int ,int ,int ) ;
 int variable_was_changed (TYPE_1__*,int *) ;

__attribute__((used)) static int
emit_notes_for_differences_2 (void **slot, void *data)
{
  htab_t old_vars = (htab_t) data;
  variable old_var, new_var;

  new_var = *(variable *) slot;
  old_var = htab_find_with_hash (old_vars, new_var->decl,
     VARIABLE_HASH_VAL (new_var->decl));
  if (!old_var)
    {

      variable_was_changed (new_var, ((void*)0));
    }


  return 1;
}
