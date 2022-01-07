
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int t_id; } ;
typedef TYPE_1__ tdesc_t ;



int
tdesc_idhash(int nbuckets, void *data)
{
 tdesc_t *tdp = data;

 return (tdp->t_id % nbuckets);
}
