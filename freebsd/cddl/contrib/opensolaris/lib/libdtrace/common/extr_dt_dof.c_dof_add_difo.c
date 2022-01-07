
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int dtrace_difv_t ;
typedef int dtrace_diftype_t ;
struct TYPE_17__ {int dtdo_len; int dtdo_intlen; int dtdo_strlen; int dtdo_varlen; int dtdo_xlmlen; void* dtdo_rtype; int dtdo_krelen; int dtdo_urelen; TYPE_7__* dtdo_ureltab; TYPE_7__* dtdo_kreltab; TYPE_5__** dtdo_xlmtab; TYPE_7__* dtdo_vartab; TYPE_7__* dtdo_strtab; TYPE_7__* dtdo_inttab; TYPE_7__* dtdo_buf; } ;
typedef TYPE_3__ dtrace_difo_t ;
struct TYPE_18__ {size_t dx_id; scalar_t__ dx_arg; } ;
typedef TYPE_4__ dt_xlator_t ;
struct TYPE_19__ {int dn_membid; TYPE_1__* dn_membexpr; } ;
typedef TYPE_5__ dt_node_t ;
struct TYPE_20__ {TYPE_2__* ddo_pgp; int * ddo_xlimport; } ;
typedef TYPE_6__ dt_dof_t ;
typedef int dsecs ;
struct TYPE_21__ {void* dofr_tgtsec; void* dofr_relsec; void* dofr_strtab; int dofd_links; int dofd_rtype; scalar_t__ dofxr_argn; int dofxr_member; int dofxr_xlator; } ;
typedef TYPE_7__ dof_xlref_t ;
typedef void* dof_secidx_t ;
typedef TYPE_7__ dof_relohdr_t ;
typedef int dof_relodesc_t ;
typedef TYPE_7__ dof_difohdr_t ;
typedef int dif_instr_t ;
struct TYPE_16__ {int * dp_xrefs; } ;
struct TYPE_15__ {TYPE_4__* dn_xlator; } ;


 void* DOF_SECIDX_NONE ;
 int DOF_SECT_DIF ;
 int DOF_SECT_DIFOHDR ;
 int DOF_SECT_INTTAB ;
 int DOF_SECT_KRELHDR ;
 int DOF_SECT_RELTAB ;
 int DOF_SECT_STRTAB ;
 int DOF_SECT_URELHDR ;
 int DOF_SECT_VARTAB ;
 int DOF_SECT_XLTAB ;
 TYPE_7__* alloca (int) ;
 int assert (int) ;
 int bcopy (void**,int *,int) ;
 void* dof_add_lsect (TYPE_6__*,TYPE_7__*,int ,int,int ,int,int) ;
 int dt_popcb (int ,int ) ;

__attribute__((used)) static dof_secidx_t
dof_add_difo(dt_dof_t *ddo, const dtrace_difo_t *dp)
{
 dof_secidx_t dsecs[5];
 uint_t nsecs = 0;

 dof_difohdr_t *dofd;
 dof_relohdr_t dofr;
 dof_secidx_t relsec;

 dof_secidx_t strsec = DOF_SECIDX_NONE;
 dof_secidx_t intsec = DOF_SECIDX_NONE;
 dof_secidx_t hdrsec = DOF_SECIDX_NONE;

 if (dp->dtdo_buf != ((void*)0)) {
  dsecs[nsecs++] = dof_add_lsect(ddo, dp->dtdo_buf,
      DOF_SECT_DIF, sizeof (dif_instr_t), 0,
      sizeof (dif_instr_t), sizeof (dif_instr_t) * dp->dtdo_len);
 }

 if (dp->dtdo_inttab != ((void*)0)) {
  dsecs[nsecs++] = intsec = dof_add_lsect(ddo, dp->dtdo_inttab,
      DOF_SECT_INTTAB, sizeof (uint64_t), 0,
      sizeof (uint64_t), sizeof (uint64_t) * dp->dtdo_intlen);
 }

 if (dp->dtdo_strtab != ((void*)0)) {
  dsecs[nsecs++] = strsec = dof_add_lsect(ddo, dp->dtdo_strtab,
      DOF_SECT_STRTAB, sizeof (char), 0, 0, dp->dtdo_strlen);
 }

 if (dp->dtdo_vartab != ((void*)0)) {
  dsecs[nsecs++] = dof_add_lsect(ddo, dp->dtdo_vartab,
      DOF_SECT_VARTAB, sizeof (uint_t), 0, sizeof (dtrace_difv_t),
      sizeof (dtrace_difv_t) * dp->dtdo_varlen);
 }

 if (dp->dtdo_xlmtab != ((void*)0)) {
  dof_xlref_t *xlt, *xlp;
  dt_node_t **pnp;

  xlt = alloca(sizeof (dof_xlref_t) * dp->dtdo_xlmlen);
  pnp = dp->dtdo_xlmtab;
  for (xlp = xlt; xlp < xlt + dp->dtdo_xlmlen; xlp++) {
   dt_node_t *dnp = *pnp++;
   dt_xlator_t *dxp = dnp->dn_membexpr->dn_xlator;

   xlp->dofxr_xlator = ddo->ddo_xlimport[dxp->dx_id];
   xlp->dofxr_member = dt_popcb(
       ddo->ddo_pgp->dp_xrefs[dxp->dx_id], dnp->dn_membid);
   xlp->dofxr_argn = (uint32_t)dxp->dx_arg;
  }

  dsecs[nsecs++] = dof_add_lsect(ddo, xlt, DOF_SECT_XLTAB,
      sizeof (dof_secidx_t), 0, sizeof (dof_xlref_t),
      sizeof (dof_xlref_t) * dp->dtdo_xlmlen);
 }





 assert(nsecs <= sizeof (dsecs) / sizeof (dsecs[0]));
 dofd = alloca(sizeof (dtrace_diftype_t) + sizeof (dsecs));
 bcopy(&dp->dtdo_rtype, &dofd->dofd_rtype, sizeof (dtrace_diftype_t));
 bcopy(dsecs, &dofd->dofd_links, sizeof (dof_secidx_t) * nsecs);

 hdrsec = dof_add_lsect(ddo, dofd, DOF_SECT_DIFOHDR,
     sizeof (dof_secidx_t), 0, 0,
     sizeof (dtrace_diftype_t) + sizeof (dof_secidx_t) * nsecs);





 if (dp->dtdo_kreltab != ((void*)0)) {
  relsec = dof_add_lsect(ddo, dp->dtdo_kreltab, DOF_SECT_RELTAB,
      sizeof (uint64_t), 0, sizeof (dof_relodesc_t),
      sizeof (dof_relodesc_t) * dp->dtdo_krelen);






  dofr.dofr_strtab = strsec;
  dofr.dofr_relsec = relsec;
  dofr.dofr_tgtsec = intsec;

  (void) dof_add_lsect(ddo, &dofr, DOF_SECT_KRELHDR,
      sizeof (dof_secidx_t), 0, 0, sizeof (dof_relohdr_t));
 }

 if (dp->dtdo_ureltab != ((void*)0)) {
  relsec = dof_add_lsect(ddo, dp->dtdo_ureltab, DOF_SECT_RELTAB,
      sizeof (uint64_t), 0, sizeof (dof_relodesc_t),
      sizeof (dof_relodesc_t) * dp->dtdo_urelen);






  dofr.dofr_strtab = strsec;
  dofr.dofr_relsec = relsec;
  dofr.dofr_tgtsec = intsec;

  (void) dof_add_lsect(ddo, &dofr, DOF_SECT_URELHDR,
      sizeof (dof_secidx_t), 0, 0, sizeof (dof_relohdr_t));
 }

 return (hdrsec);
}
