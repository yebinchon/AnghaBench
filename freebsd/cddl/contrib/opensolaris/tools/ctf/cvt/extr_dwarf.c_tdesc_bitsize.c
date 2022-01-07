
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int t_type; size_t t_size; int t_id; struct TYPE_5__* t_tdesc; TYPE_1__* t_intr; } ;
typedef TYPE_2__ tdesc_t ;
struct TYPE_4__ {size_t intr_nbits; } ;
 size_t NBBY ;






 int terminate (char*,int ,int) ;

__attribute__((used)) static size_t
tdesc_bitsize(tdesc_t *tdp)
{
 for (;;) {
  switch (tdp->t_type) {
  case 134:
   return (tdp->t_intr->intr_nbits);

  case 139:
  case 135:
  case 131:
  case 129:
  case 137:
  case 133:
   return (tdp->t_size * NBBY);

  case 136:
   return (0);

  case 130:
  case 128:
  case 132:
  case 138:
   tdp = tdp->t_tdesc;
   continue;

  case 0:
   return (0);

  default:
   terminate("tdp %u: tdesc_bitsize on unknown type %d\n",
       tdp->t_id, tdp->t_type);
  }
 }
}
