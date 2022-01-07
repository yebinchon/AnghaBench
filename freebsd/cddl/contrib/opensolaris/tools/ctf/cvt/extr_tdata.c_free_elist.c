
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* t_emem; } ;
typedef TYPE_1__ tdesc_t ;
struct TYPE_6__ {struct TYPE_6__* el_name; struct TYPE_6__* el_next; } ;
typedef TYPE_2__ elist_t ;


 int free (TYPE_2__*) ;

__attribute__((used)) static void
free_elist(tdesc_t *tdp)
{
 elist_t *el = tdp->t_emem;
 elist_t *oel;

 while (el) {
  oel = el;
  el = el->el_next;

  if (oel->el_name)
   free(oel->el_name);
  free(oel);
 }
}
