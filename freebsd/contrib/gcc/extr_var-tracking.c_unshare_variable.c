
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* variable ;
typedef TYPE_3__* location_chain ;
struct TYPE_11__ {int vars; } ;
typedef TYPE_4__ dataflow_set ;
struct TYPE_10__ {int * loc; struct TYPE_10__* next; } ;
struct TYPE_9__ {int refcount; int n_var_parts; int decl; TYPE_1__* var_part; } ;
struct TYPE_8__ {int * cur_loc; TYPE_3__* loc_chain; int offset; } ;


 int INSERT ;
 int VARIABLE_HASH_VAL (int ) ;
 void** htab_find_slot_with_hash (int ,int ,int ,int ) ;
 int loc_chain_pool ;
 void* pool_alloc (int ) ;
 int var_pool ;

__attribute__((used)) static variable
unshare_variable (dataflow_set *set, variable var)
{
  void **slot;
  variable new_var;
  int i;

  new_var = pool_alloc (var_pool);
  new_var->decl = var->decl;
  new_var->refcount = 1;
  var->refcount--;
  new_var->n_var_parts = var->n_var_parts;

  for (i = 0; i < var->n_var_parts; i++)
    {
      location_chain node;
      location_chain *nextp;

      new_var->var_part[i].offset = var->var_part[i].offset;
      nextp = &new_var->var_part[i].loc_chain;
      for (node = var->var_part[i].loc_chain; node; node = node->next)
 {
   location_chain new_lc;

   new_lc = pool_alloc (loc_chain_pool);
   new_lc->next = ((void*)0);
   new_lc->loc = node->loc;

   *nextp = new_lc;
   nextp = &new_lc->next;
 }



      if (new_var->var_part[i].loc_chain)
 new_var->var_part[i].cur_loc = new_var->var_part[i].loc_chain->loc;
      else
 new_var->var_part[i].cur_loc = ((void*)0);
    }

  slot = htab_find_slot_with_hash (set->vars, new_var->decl,
       VARIABLE_HASH_VAL (new_var->decl),
       INSERT);
  *slot = new_var;
  return new_var;
}
