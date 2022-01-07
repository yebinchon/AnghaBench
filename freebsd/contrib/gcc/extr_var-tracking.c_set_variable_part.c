
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_2__* variable ;
typedef int tree ;
typedef void* rtx ;
typedef TYPE_3__* location_chain ;
struct TYPE_15__ {int vars; } ;
typedef TYPE_4__ dataflow_set ;
struct TYPE_14__ {void* loc; struct TYPE_14__* next; } ;
struct TYPE_13__ {int refcount; int n_var_parts; TYPE_1__* var_part; int decl; } ;
struct TYPE_12__ {int * cur_loc; TYPE_3__* loc_chain; void* offset; } ;
typedef void* HOST_WIDE_INT ;


 int INSERT ;
 int MAX_VAR_PARTS ;
 scalar_t__ REGNO (void*) ;
 scalar_t__ REG_P (void*) ;
 int VARIABLE_HASH_VAL (int ) ;
 int find_variable_location_part (TYPE_2__*,void*,int*) ;
 int gcc_assert (int) ;
 void** htab_find_slot_with_hash (int ,int ,int ,int ) ;
 int loc_chain_pool ;
 void* pool_alloc (int ) ;
 int pool_free (int ,TYPE_3__*) ;
 scalar_t__ rtx_equal_p (void*,void*) ;
 TYPE_2__* unshare_variable (TYPE_4__*,TYPE_2__*) ;
 int var_pool ;
 int variable_was_changed (TYPE_2__*,int ) ;

__attribute__((used)) static void
set_variable_part (dataflow_set *set, rtx loc, tree decl, HOST_WIDE_INT offset)
{
  int pos;
  location_chain node, next;
  location_chain *nextp;
  variable var;
  void **slot;

  slot = htab_find_slot_with_hash (set->vars, decl,
       VARIABLE_HASH_VAL (decl), INSERT);
  if (!*slot)
    {

      var = pool_alloc (var_pool);
      var->decl = decl;
      var->refcount = 1;
      var->n_var_parts = 1;
      var->var_part[0].offset = offset;
      var->var_part[0].loc_chain = ((void*)0);
      var->var_part[0].cur_loc = ((void*)0);
      *slot = var;
      pos = 0;
    }
  else
    {
      int inspos = 0;

      var = (variable) *slot;

      pos = find_variable_location_part (var, offset, &inspos);

      if (pos >= 0)
 {
   node = var->var_part[pos].loc_chain;

   if (node
       && ((REG_P (node->loc) && REG_P (loc)
     && REGNO (node->loc) == REGNO (loc))
    || rtx_equal_p (node->loc, loc)))
     {


       return;
     }
   else
     {

       if (var->refcount > 1)
  var = unshare_variable (set, var);
     }
 }
      else
 {



   if (var->refcount > 1)
     var = unshare_variable (set, var);



   gcc_assert (var->n_var_parts < MAX_VAR_PARTS);



   for (pos = var->n_var_parts; pos > inspos; pos--)
     var->var_part[pos] = var->var_part[pos - 1];

   var->n_var_parts++;
   var->var_part[pos].offset = offset;
   var->var_part[pos].loc_chain = ((void*)0);
   var->var_part[pos].cur_loc = ((void*)0);
 }
    }


  nextp = &var->var_part[pos].loc_chain;
  for (node = var->var_part[pos].loc_chain; node; node = next)
    {
      next = node->next;
      if ((REG_P (node->loc) && REG_P (loc)
    && REGNO (node->loc) == REGNO (loc))
   || rtx_equal_p (node->loc, loc))
 {
   pool_free (loc_chain_pool, node);
   *nextp = next;
   break;
 }
      else
 nextp = &node->next;
    }


  node = pool_alloc (loc_chain_pool);
  node->loc = loc;
  node->next = var->var_part[pos].loc_chain;
  var->var_part[pos].loc_chain = node;


  if (var->var_part[pos].cur_loc == ((void*)0))
    {
      var->var_part[pos].cur_loc = loc;
      variable_was_changed (var, set->vars);
    }
}
