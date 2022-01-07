
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kd_name; } ;
typedef TYPE_1__ ksiddomain_t ;


 int UMEM_NOFAIL ;
 int spa_strdup (char const*) ;
 TYPE_1__* umem_zalloc (int,int ) ;

ksiddomain_t *
ksid_lookupdomain(const char *dom)
{
 ksiddomain_t *kd;

 kd = umem_zalloc(sizeof (ksiddomain_t), UMEM_NOFAIL);
 kd->kd_name = spa_strdup(dom);
 return (kd);
}
