
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* variable ;
typedef TYPE_2__* location_chain ;
struct TYPE_6__ {scalar_t__ refcount; int n_var_parts; TYPE_1__* var_part; struct TYPE_6__* next; } ;
struct TYPE_5__ {TYPE_2__* loc_chain; } ;


 int gcc_assert (int) ;
 int loc_chain_pool ;
 int pool_free (int ,TYPE_2__*) ;
 int var_pool ;

__attribute__((used)) static void
variable_htab_free (void *elem)
{
  int i;
  variable var = (variable) elem;
  location_chain node, next;

  gcc_assert (var->refcount > 0);

  var->refcount--;
  if (var->refcount > 0)
    return;

  for (i = 0; i < var->n_var_parts; i++)
    {
      for (node = var->var_part[i].loc_chain; node; node = next)
 {
   next = node->next;
   pool_free (loc_chain_pool, node);
 }
      var->var_part[i].loc_chain = ((void*)0);
    }
  pool_free (var_pool, var);
}
