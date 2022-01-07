
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {struct TYPE_4__* dn_list; int * dn_string; } ;
typedef TYPE_1__ dt_node_t ;


 scalar_t__ strcmp (int *,int *) ;

__attribute__((used)) static uint8_t
dt_probe_argmap(dt_node_t *xnp, dt_node_t *nnp)
{
 uint8_t i;

 for (i = 0; nnp != ((void*)0); i++) {
  if (nnp->dn_string != ((void*)0) &&
      strcmp(nnp->dn_string, xnp->dn_string) == 0)
   break;
  else
   nnp = nnp->dn_list;
 }

 return (i);
}
