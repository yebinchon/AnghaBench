
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ t_id; } ;
typedef TYPE_1__ tdesc_t ;



int
tdesc_idcmp(void *arg1, void *arg2)
{
 tdesc_t *tdp1 = arg1, *tdp2 = arg2;

 if (tdp1->t_id == tdp2->t_id)
  return (0);
 else
  return (tdp1->t_id > tdp2->t_id ? 1 : -1);
}
