
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int dt_pfargv_t ;
struct TYPE_7__ {TYPE_1__* pfd_conv; } ;
typedef TYPE_2__ dt_pfargd_t ;
struct TYPE_8__ {int dn_type; int dn_ctfp; } ;
typedef TYPE_3__ dt_node_t ;
struct TYPE_6__ {int pfc_dtype; int pfc_dctfp; } ;


 int ctf_type_compat (int ,int ,int ,int ) ;
 int ctf_type_resolve (int ,int ) ;

__attribute__((used)) static int
pfcheck_type(dt_pfargv_t *pfv, dt_pfargd_t *pfd, dt_node_t *dnp)
{
 return (ctf_type_compat(dnp->dn_ctfp, ctf_type_resolve(dnp->dn_ctfp,
     dnp->dn_type), pfd->pfd_conv->pfc_dctfp, pfd->pfd_conv->pfc_dtype));
}
