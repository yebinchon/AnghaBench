
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int di_data; } ;
typedef TYPE_1__ dt_ident_t ;


 int free (int ) ;

__attribute__((used)) static void
dt_iddtor_free(dt_ident_t *idp)
{
 free(idp->di_data);
}
