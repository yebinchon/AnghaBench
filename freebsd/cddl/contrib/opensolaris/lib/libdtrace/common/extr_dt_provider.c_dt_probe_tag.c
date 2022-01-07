
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_15__ {scalar_t__ dtt_type; int dtt_ctfp; int dtt_object; } ;
typedef TYPE_3__ dtrace_typeinfo_t ;
typedef int dtrace_hdl_t ;
struct TYPE_16__ {char* pr_name; TYPE_2__* pr_pvp; } ;
typedef TYPE_4__ dt_probe_t ;
struct TYPE_17__ {int dn_kind; } ;
typedef TYPE_5__ dt_node_t ;
struct TYPE_13__ {char* dtvd_name; } ;
struct TYPE_14__ {TYPE_1__ pv_desc; int * pv_hdl; } ;


 int B_FALSE ;
 int CTF_ADD_ROOT ;
 scalar_t__ CTF_ERR ;
 int DTRACE_OBJ_DDEFS ;
 int DT_DYN_CTFP (int *) ;
 int DT_DYN_TYPE (int *) ;
 int DT_NODE_TYPE ;
 int D_UNKNOWN ;
 int _dtrace_defattr ;
 char* alloca (size_t) ;
 int bzero (TYPE_5__*,int) ;
 scalar_t__ ctf_add_typedef (int ,int ,char*,int ) ;
 int ctf_errmsg (int ) ;
 int ctf_errno (int ) ;
 scalar_t__ ctf_update (int ) ;
 int dt_node_attr_assign (TYPE_5__*,int ) ;
 int dt_node_type_assign (TYPE_5__*,int ,scalar_t__,int ) ;
 scalar_t__ dtrace_lookup_by_type (int *,int ,char*,TYPE_3__*) ;
 size_t snprintf (char*,size_t,char*,char*,char*,int) ;
 int xyerror (int ,char*,char*,int ) ;

dt_node_t *
dt_probe_tag(dt_probe_t *prp, uint_t argn, dt_node_t *dnp)
{
 dtrace_hdl_t *dtp = prp->pr_pvp->pv_hdl;
 dtrace_typeinfo_t dtt;
 size_t len;
 char *tag;

 len = snprintf(((void*)0), 0, "__dtrace_%s___%s_arg%u",
     prp->pr_pvp->pv_desc.dtvd_name, prp->pr_name, argn);

 tag = alloca(len + 1);

 (void) snprintf(tag, len + 1, "__dtrace_%s___%s_arg%u",
     prp->pr_pvp->pv_desc.dtvd_name, prp->pr_name, argn);

 if (dtrace_lookup_by_type(dtp, DTRACE_OBJ_DDEFS, tag, &dtt) != 0) {
  dtt.dtt_object = DTRACE_OBJ_DDEFS;
  dtt.dtt_ctfp = DT_DYN_CTFP(dtp);
  dtt.dtt_type = ctf_add_typedef(DT_DYN_CTFP(dtp),
      CTF_ADD_ROOT, tag, DT_DYN_TYPE(dtp));

  if (dtt.dtt_type == CTF_ERR ||
      ctf_update(dtt.dtt_ctfp) == CTF_ERR) {
   xyerror(D_UNKNOWN, "cannot define type %s: %s\n",
       tag, ctf_errmsg(ctf_errno(dtt.dtt_ctfp)));
  }
 }

 bzero(dnp, sizeof (dt_node_t));
 dnp->dn_kind = DT_NODE_TYPE;

 dt_node_type_assign(dnp, dtt.dtt_ctfp, dtt.dtt_type, B_FALSE);
 dt_node_attr_assign(dnp, _dtrace_defattr);

 return (dnp);
}
