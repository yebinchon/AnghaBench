
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * dis_args; } ;
typedef TYPE_1__ dt_idsig_t ;
struct TYPE_5__ {int * di_data; } ;
typedef TYPE_2__ dt_ident_t ;


 int free (int *) ;

__attribute__((used)) static void
dt_iddtor_sign(dt_ident_t *idp)
{
 if (idp->di_data != ((void*)0))
  free(((dt_idsig_t *)idp->di_data)->dis_args);
 free(idp->di_data);
}
