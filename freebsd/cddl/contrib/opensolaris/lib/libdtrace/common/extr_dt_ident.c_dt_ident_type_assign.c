
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int di_type; int * di_ctfp; } ;
typedef TYPE_1__ dt_ident_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;



void
dt_ident_type_assign(dt_ident_t *idp, ctf_file_t *fp, ctf_id_t type)
{
 idp->di_ctfp = fp;
 idp->di_type = type;
}
