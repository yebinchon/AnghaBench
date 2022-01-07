
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t_type; struct TYPE_4__* t_tdesc; } ;
typedef TYPE_1__ tdesc_t ;







__attribute__((used)) static tdesc_t *
tdesc_basetype(tdesc_t *tdp)
{
 for (;;) {
  switch (tdp->t_type) {
  case 129:
  case 128:
  case 130:
  case 131:
   tdp = tdp->t_tdesc;
   break;
  case 0:
   return (((void*)0));
  default:
   return (tdp);
  }
 }
}
