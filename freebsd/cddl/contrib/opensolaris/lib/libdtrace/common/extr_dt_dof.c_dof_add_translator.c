
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
typedef int uint32_t ;
typedef int dtrace_hdl_t ;
struct TYPE_17__ {int di_attr; } ;
struct TYPE_18__ {size_t dx_id; TYPE_2__ dx_souid; int dx_dst_type; int dx_dst_ctfp; int dx_src_type; int dx_src_ctfp; int * dx_membdif; TYPE_4__* dx_members; } ;
typedef TYPE_3__ dt_xlator_t ;
struct TYPE_19__ {size_t dn_membid; int dn_membname; struct TYPE_19__* dn_list; } ;
typedef TYPE_4__ dt_node_t ;
struct TYPE_20__ {int ddo_strsec; int ddo_xlms; int ddo_ldata; TYPE_1__* ddo_pgp; scalar_t__* ddo_xlexport; scalar_t__* ddo_xlimport; int * ddo_hdl; } ;
typedef TYPE_5__ dt_dof_t ;
typedef int dofxm ;
typedef int dofxl ;
struct TYPE_21__ {int dofxm_type; void* dofxm_name; scalar_t__ dofxm_difo; } ;
typedef TYPE_6__ dof_xlmember_t ;
struct TYPE_22__ {int dofxl_argc; int dofxl_attr; void* dofxl_type; void* dofxl_argv; int dofxl_strtab; scalar_t__ dofxl_members; } ;
typedef TYPE_7__ dof_xlator_t ;
typedef scalar_t__ dof_secidx_t ;
typedef int buf ;
struct TYPE_16__ {int * dp_xrefs; } ;


 int BT_TEST (int ,scalar_t__) ;
 scalar_t__ DOF_SECIDX_NONE ;
 scalar_t__ DOF_SECT_XLEXPORT ;
 scalar_t__ DOF_SECT_XLIMPORT ;
 scalar_t__ DOF_SECT_XLMEMBERS ;
 int DT_TYPE_NAMELEN ;
 int assert (int) ;
 int ctf_type_name (int ,int ,char*,int) ;
 scalar_t__ dof_add_difo (TYPE_5__*,int ) ;
 scalar_t__ dof_add_lsect (TYPE_5__*,TYPE_7__*,scalar_t__,int,int ,int,int) ;
 void* dof_add_string (TYPE_5__*,int ) ;
 int dof_attr (int *) ;
 int dt_buf_concat (int *,int *,int *,int) ;
 int dt_buf_len (int *) ;
 int dt_buf_reset (int *,int *) ;
 int dt_buf_write (int *,int *,TYPE_6__*,int,int) ;
 int dt_node_diftype (int *,TYPE_4__*,int *) ;

__attribute__((used)) static void
dof_add_translator(dt_dof_t *ddo, const dt_xlator_t *dxp, uint_t type)
{
 dtrace_hdl_t *dtp = ddo->ddo_hdl;
 dof_xlmember_t dofxm;
 dof_xlator_t dofxl;
 dof_secidx_t *xst;

 char buf[DT_TYPE_NAMELEN];
 dt_node_t *dnp;
 uint_t i = 0;

 assert(type == DOF_SECT_XLIMPORT || type == DOF_SECT_XLEXPORT);
 xst = type == DOF_SECT_XLIMPORT ? ddo->ddo_xlimport : ddo->ddo_xlexport;

 if (xst[dxp->dx_id] != DOF_SECIDX_NONE)
  return;

 dt_buf_reset(dtp, &ddo->ddo_xlms);







 for (dnp = dxp->dx_members; dnp != ((void*)0); dnp = dnp->dn_list, i++) {
  if (type == DOF_SECT_XLIMPORT) {
   if (!BT_TEST(ddo->ddo_pgp->dp_xrefs[dxp->dx_id], i))
    continue;
   dofxm.dofxm_difo = DOF_SECIDX_NONE;
  } else {
   dofxm.dofxm_difo = dof_add_difo(ddo,
       dxp->dx_membdif[dnp->dn_membid]);
  }

  dofxm.dofxm_name = dof_add_string(ddo, dnp->dn_membname);
  dt_node_diftype(dtp, dnp, &dofxm.dofxm_type);

  dt_buf_write(dtp, &ddo->ddo_xlms,
      &dofxm, sizeof (dofxm), sizeof (uint32_t));
 }

 dofxl.dofxl_members = dof_add_lsect(ddo, ((void*)0), DOF_SECT_XLMEMBERS,
     sizeof (uint32_t), 0, sizeof (dofxm), dt_buf_len(&ddo->ddo_xlms));

 dt_buf_concat(dtp, &ddo->ddo_ldata, &ddo->ddo_xlms, sizeof (uint32_t));

 dofxl.dofxl_strtab = ddo->ddo_strsec;
 dofxl.dofxl_argv = dof_add_string(ddo, ctf_type_name(
     dxp->dx_src_ctfp, dxp->dx_src_type, buf, sizeof (buf)));
 dofxl.dofxl_argc = 1;
 dofxl.dofxl_type = dof_add_string(ddo, ctf_type_name(
     dxp->dx_dst_ctfp, dxp->dx_dst_type, buf, sizeof (buf)));
 dofxl.dofxl_attr = dof_attr(&dxp->dx_souid.di_attr);

 xst[dxp->dx_id] = dof_add_lsect(ddo, &dofxl, type,
     sizeof (uint32_t), 0, 0, sizeof (dofxl));
}
