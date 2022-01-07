
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* t_members; } ;
typedef TYPE_1__ tdesc_t ;
struct TYPE_6__ {scalar_t__ ml_offset; scalar_t__ ml_size; struct TYPE_6__* ml_next; int ml_type; int ml_name; } ;
typedef TYPE_2__ mlist_t ;
typedef int equiv_data_t ;


 int equiv_node (int ,int ,int *) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int
equiv_su(tdesc_t *stdp, tdesc_t *ttdp, equiv_data_t *ed)
{
 mlist_t *ml1 = stdp->t_members, *ml2 = ttdp->t_members;

 while (ml1 && ml2) {
  if (ml1->ml_offset != ml2->ml_offset ||
      strcmp(ml1->ml_name, ml2->ml_name) != 0 ||
      ml1->ml_size != ml2->ml_size ||
      !equiv_node(ml1->ml_type, ml2->ml_type, ed))
   return (0);

  ml1 = ml1->ml_next;
  ml2 = ml2->ml_next;
 }

 if (ml1 || ml2)
  return (0);

 return (1);
}
