
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kd_name; } ;
typedef TYPE_1__ ksiddomain_t ;


 int spa_strfree (int ) ;
 int umem_free (TYPE_1__*,int) ;

void
ksiddomain_rele(ksiddomain_t *ksid)
{
 spa_strfree(ksid->kd_name);
 umem_free(ksid, sizeof (ksiddomain_t));
}
