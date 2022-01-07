
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * di_data; } ;
typedef TYPE_1__ dt_ident_t ;


 int dt_probe_destroy (int *) ;

__attribute__((used)) static void
dt_iddtor_probe(dt_ident_t *idp)
{
 if (idp->di_data != ((void*)0))
  dt_probe_destroy(idp->di_data);
}
