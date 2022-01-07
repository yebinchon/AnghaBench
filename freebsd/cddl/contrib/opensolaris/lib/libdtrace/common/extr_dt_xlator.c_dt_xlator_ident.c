
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dx_souid; int dx_ptrid; } ;
typedef TYPE_1__ dt_xlator_t ;
typedef int dt_ident_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;


 scalar_t__ CTF_K_POINTER ;
 scalar_t__ ctf_type_kind (int *,int ) ;
 int ctf_type_resolve (int *,int ) ;

dt_ident_t *
dt_xlator_ident(dt_xlator_t *dxp, ctf_file_t *ctfp, ctf_id_t type)
{
 if (ctf_type_kind(ctfp, ctf_type_resolve(ctfp, type)) == CTF_K_POINTER)
  return (&dxp->dx_ptrid);
 else
  return (&dxp->dx_souid);
}
