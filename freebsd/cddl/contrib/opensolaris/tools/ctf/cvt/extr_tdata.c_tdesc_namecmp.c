
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int t_name; } ;
typedef TYPE_1__ tdesc_t ;


 int streq (int ,int ) ;

int
tdesc_namecmp(void *arg1, void *arg2)
{
 tdesc_t *tdp1 = arg1, *tdp2 = arg2;

 return (!streq(tdp1->t_name, tdp2->t_name));
}
