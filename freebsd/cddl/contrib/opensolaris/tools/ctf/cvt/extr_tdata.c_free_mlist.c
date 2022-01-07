
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* t_members; } ;
typedef TYPE_1__ tdesc_t ;
struct TYPE_6__ {struct TYPE_6__* ml_name; struct TYPE_6__* ml_next; } ;
typedef TYPE_2__ mlist_t ;


 int free (TYPE_2__*) ;

__attribute__((used)) static void
free_mlist(tdesc_t *tdp)
{
 mlist_t *ml = tdp->t_members;
 mlist_t *oml;

 while (ml) {
  oml = ml;
  ml = ml->ml_next;

  if (oml->ml_name)
   free(oml->ml_name);
  free(oml);
 }
}
