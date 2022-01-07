
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tdtrav_data_t ;
struct TYPE_4__ {TYPE_2__* t_members; } ;
typedef TYPE_1__ tdesc_t ;
struct TYPE_5__ {int ml_type; struct TYPE_5__* ml_next; } ;
typedef TYPE_2__ mlist_t ;


 int tdtraverse (int ,int *,int *) ;

__attribute__((used)) static int
tdtrav_su(tdesc_t *this, tdtrav_data_t *tdtd)
{
 mlist_t *ml;
 int rc = 0;

 for (ml = this->t_members; ml; ml = ml->ml_next) {
  if ((rc = tdtraverse(ml->ml_type, &ml->ml_type, tdtd)) < 0)
   return (rc);
 }

 return (rc);
}
