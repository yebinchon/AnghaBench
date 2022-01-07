
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint_t ;
typedef int n2 ;
typedef int n1 ;
typedef int dtrace_hdl_t ;
typedef void* dtrace_attribute_t ;
struct TYPE_17__ {void* di_attr; } ;
struct TYPE_16__ {void* di_attr; } ;
struct TYPE_18__ {TYPE_2__ dx_ptrid; TYPE_1__ dx_souid; int dx_locals; int dx_dst_ctfp; int dx_dst_type; } ;
typedef TYPE_3__ dt_xlator_t ;
struct TYPE_19__ {struct TYPE_19__* dn_membexpr; int dn_membname; int dn_attr; struct TYPE_19__* dn_list; struct TYPE_19__* dn_members; TYPE_3__* dn_xlator; } ;
typedef TYPE_4__ dt_node_t ;
struct TYPE_20__ {int ctm_type; } ;
typedef TYPE_5__ ctf_membinfo_t ;
struct TYPE_21__ {int pcb_globals; int * pcb_hdl; } ;


 int B_FALSE ;
 scalar_t__ CTF_ERR ;
 int DT_DYN_CTFP (int *) ;
 int DT_DYN_TYPE (int *) ;
 int DT_IDFLG_REF ;
 int DT_TYPE_NAMELEN ;
 int D_XLATE_INCOMPAT ;
 int D_XLATE_MEMB ;
 int _dtrace_defattr ;
 void* _dtrace_maxattr ;
 scalar_t__ ctf_member_info (int ,int ,int ,TYPE_5__*) ;
 int ctf_type_name (int ,int ,char*,int) ;
 void* dt_attr_min (void*,int ) ;
 int dt_idstack_pop (int *,int ) ;
 int dt_idstack_push (int *,int ) ;
 int dt_node_attr_assign (TYPE_4__*,int ) ;
 int dt_node_cook (TYPE_4__*,int ) ;
 scalar_t__ dt_node_is_argcompat (TYPE_4__*,TYPE_4__*) ;
 int dt_node_type_assign (TYPE_4__*,int ,int ,int ) ;
 int dt_node_type_name (TYPE_4__*,char*,int) ;
 int xyerror (int ,char*,int ,int ,...) ;
 TYPE_6__* yypcb ;

__attribute__((used)) static dt_node_t *
dt_cook_xlator(dt_node_t *dnp, uint_t idflags)
{
 dtrace_hdl_t *dtp = yypcb->pcb_hdl;
 dt_xlator_t *dxp = dnp->dn_xlator;
 dt_node_t *mnp;

 char n1[DT_TYPE_NAMELEN];
 char n2[DT_TYPE_NAMELEN];

 dtrace_attribute_t attr = _dtrace_maxattr;
 ctf_membinfo_t ctm;






 dt_idstack_push(&yypcb->pcb_globals, dxp->dx_locals);

 for (mnp = dnp->dn_members; mnp != ((void*)0); mnp = mnp->dn_list) {
  if (ctf_member_info(dxp->dx_dst_ctfp, dxp->dx_dst_type,
      mnp->dn_membname, &ctm) == CTF_ERR) {
   xyerror(D_XLATE_MEMB,
       "translator member %s is not a member of %s\n",
       mnp->dn_membname, ctf_type_name(dxp->dx_dst_ctfp,
       dxp->dx_dst_type, n1, sizeof (n1)));
  }

  (void) dt_node_cook(mnp, DT_IDFLG_REF);
  dt_node_type_assign(mnp, dxp->dx_dst_ctfp, ctm.ctm_type,
      B_FALSE);
  attr = dt_attr_min(attr, mnp->dn_attr);

  if (dt_node_is_argcompat(mnp, mnp->dn_membexpr) == 0) {
   xyerror(D_XLATE_INCOMPAT,
       "translator member %s definition uses "
       "incompatible types: \"%s\" = \"%s\"\n",
       mnp->dn_membname,
       dt_node_type_name(mnp, n1, sizeof (n1)),
       dt_node_type_name(mnp->dn_membexpr,
       n2, sizeof (n2)));
  }
 }

 dt_idstack_pop(&yypcb->pcb_globals, dxp->dx_locals);

 dxp->dx_souid.di_attr = attr;
 dxp->dx_ptrid.di_attr = attr;

 dt_node_type_assign(dnp, DT_DYN_CTFP(dtp), DT_DYN_TYPE(dtp), B_FALSE);
 dt_node_attr_assign(dnp, _dtrace_defattr);

 return (dnp);
}
