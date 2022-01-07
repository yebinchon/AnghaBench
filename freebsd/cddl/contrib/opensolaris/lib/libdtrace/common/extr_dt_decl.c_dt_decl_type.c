
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int uint_t ;
typedef int n ;
struct TYPE_26__ {scalar_t__ dtt_type; int * dtt_ctfp; int dtt_object; scalar_t__ dtt_flags; } ;
typedef TYPE_3__ dtrace_typeinfo_t ;
struct TYPE_27__ {TYPE_5__* dt_ddefs; int dt_ctferr; TYPE_5__* dt_cdefs; } ;
typedef TYPE_4__ dtrace_hdl_t ;
struct TYPE_28__ {int * dm_ctfp; int dm_name; } ;
typedef TYPE_5__ dt_module_t ;
struct TYPE_29__ {int dd_attr; scalar_t__ dd_type; scalar_t__ dd_kind; char* dd_name; int * dd_ctfp; TYPE_2__* dd_node; struct TYPE_29__* dd_next; } ;
typedef TYPE_6__ dt_decl_t ;
typedef scalar_t__ ctf_id_t ;
struct TYPE_30__ {scalar_t__ ctr_contents; int ctr_nelems; int ctr_index; } ;
typedef TYPE_7__ ctf_arinfo_t ;
struct TYPE_24__ {scalar_t__ ds_next; } ;
struct TYPE_31__ {TYPE_1__ pcb_dstack; scalar_t__ pcb_idepth; TYPE_4__* pcb_hdl; } ;
struct TYPE_25__ {scalar_t__ dn_kind; scalar_t__ dn_value; } ;


 int CTF_ADD_NONROOT ;
 int CTF_ADD_ROOT ;
 scalar_t__ CTF_ERR ;
 scalar_t__ CTF_K_ARRAY ;


 scalar_t__ CTF_K_FUNCTION ;

 scalar_t__ CTF_K_POINTER ;



 scalar_t__ DTT_FL_USER ;
 int DT_DA_LONG ;
 int DT_DA_LONGLONG ;
 int DT_DA_SHORT ;
 int DT_DA_SIGNED ;
 int DT_DA_UNSIGNED ;
 int DT_DA_USER ;
 int * DT_DYN_CTFP (TYPE_4__*) ;
 scalar_t__ DT_DYN_TYPE (TYPE_4__*) ;
 int * DT_FPTR_CTFP (TYPE_4__*) ;
 scalar_t__ DT_FPTR_TYPE (TYPE_4__*) ;
 int * DT_FUNC_CTFP (TYPE_4__*) ;
 scalar_t__ DT_FUNC_TYPE (TYPE_4__*) ;
 scalar_t__ DT_NODE_TYPE ;
 int DT_TYPE_NAMELEN ;
 int D_UNKNOWN ;
 char* alloca (int) ;
 scalar_t__ ctf_add_array (int *,int ,TYPE_7__*) ;
 scalar_t__ ctf_add_forward (int *,int ,char*,int) ;
 scalar_t__ ctf_add_type (int *,int *,scalar_t__) ;
 int ctf_errmsg (int ) ;
 int ctf_errno (int *) ;
 int ctf_lookup_by_name (int *,char*) ;
 int * ctf_parent_file (int *) ;
 scalar_t__ ctf_update (int *) ;
 TYPE_5__* dt_module_lookup_by_ctf (TYPE_4__*,int *) ;
 int dt_type_lookup (char*,TYPE_3__*) ;
 char* dt_type_name (int *,scalar_t__,char*,int) ;
 int dt_type_pointer (TYPE_3__*) ;
 int dtrace_errmsg (TYPE_4__*,int ) ;
 int dtrace_errno (TYPE_4__*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int xywarn (int ,char*,...) ;
 TYPE_8__* yypcb ;

int
dt_decl_type(dt_decl_t *ddp, dtrace_typeinfo_t *tip)
{
 dtrace_hdl_t *dtp = yypcb->pcb_hdl;

 dt_module_t *dmp;
 ctf_arinfo_t r;
 ctf_id_t type;

 char n[DT_TYPE_NAMELEN];
 uint_t flag;
 char *name;
 int rv;

 tip->dtt_flags = 0;





 dmp = yypcb->pcb_idepth ? dtp->dt_cdefs : dtp->dt_ddefs;
 flag = yypcb->pcb_dstack.ds_next ? CTF_ADD_NONROOT : CTF_ADD_ROOT;

 if (ddp->dd_attr & DT_DA_USER)
  tip->dtt_flags = DTT_FL_USER;





 if (ddp->dd_ctfp != ((void*)0) &&
     (dmp = dt_module_lookup_by_ctf(dtp, ddp->dd_ctfp)) != ((void*)0)) {
  tip->dtt_object = dmp->dm_name;
  tip->dtt_ctfp = ddp->dd_ctfp;
  tip->dtt_type = ddp->dd_type;
  return (0);
 }
 if (ddp->dd_kind == CTF_K_FUNCTION) {
  tip->dtt_object = dtp->dt_ddefs->dm_name;
  tip->dtt_ctfp = DT_FUNC_CTFP(dtp);
  tip->dtt_type = DT_FUNC_TYPE(dtp);
  return (0);
 }






 if (ddp->dd_kind == CTF_K_POINTER) {
  if (ddp->dd_next->dd_kind == CTF_K_FUNCTION) {
   tip->dtt_object = dtp->dt_ddefs->dm_name;
   tip->dtt_ctfp = DT_FPTR_CTFP(dtp);
   tip->dtt_type = DT_FPTR_TYPE(dtp);
   return (0);
  }

  if ((rv = dt_decl_type(ddp->dd_next, tip)) == 0 &&
      (rv = dt_type_pointer(tip)) != 0) {
   xywarn(D_UNKNOWN, "cannot find type: %s*: %s\n",
       dt_type_name(tip->dtt_ctfp, tip->dtt_type,
       n, sizeof (n)), ctf_errmsg(dtp->dt_ctferr));
  }

  return (rv);
 }
 if (ddp->dd_kind == CTF_K_ARRAY) {




  if (ddp->dd_node != ((void*)0) &&
      ddp->dd_node->dn_kind == DT_NODE_TYPE) {
   tip->dtt_object = dtp->dt_ddefs->dm_name;
   tip->dtt_ctfp = DT_DYN_CTFP(dtp);
   tip->dtt_type = DT_DYN_TYPE(dtp);
   return (0);
  }

  if ((rv = dt_decl_type(ddp->dd_next, tip)) != 0)
   return (rv);






  if (tip->dtt_ctfp != dmp->dm_ctfp &&
      tip->dtt_ctfp != ctf_parent_file(dmp->dm_ctfp)) {

   tip->dtt_type = ctf_add_type(dmp->dm_ctfp,
       tip->dtt_ctfp, tip->dtt_type);
   tip->dtt_ctfp = dmp->dm_ctfp;

   if (tip->dtt_type == CTF_ERR ||
       ctf_update(tip->dtt_ctfp) == CTF_ERR) {
    xywarn(D_UNKNOWN, "failed to copy type: %s\n",
        ctf_errmsg(ctf_errno(tip->dtt_ctfp)));
    return (-1);
   }
  }





  r.ctr_contents = tip->dtt_type;
  r.ctr_index = ctf_lookup_by_name(tip->dtt_ctfp, "long");
  r.ctr_nelems = ddp->dd_node ?
      (uint_t)ddp->dd_node->dn_value : 0;

  tip->dtt_object = dmp->dm_name;
  tip->dtt_ctfp = dmp->dm_ctfp;
  tip->dtt_type = ctf_add_array(dmp->dm_ctfp, CTF_ADD_ROOT, &r);

  if (tip->dtt_type == CTF_ERR ||
      ctf_update(tip->dtt_ctfp) == CTF_ERR) {
   xywarn(D_UNKNOWN, "failed to create array type: %s\n",
       ctf_errmsg(ctf_errno(tip->dtt_ctfp)));
   return (-1);
  }

  return (0);
 }





 name = alloca(ddp->dd_name ? strlen(ddp->dd_name) + 20 : 20);
 name[0] = '\0';

 switch (ddp->dd_kind) {
 case 131:
 case 132:
  if (ddp->dd_attr & DT_DA_SIGNED)
   (void) strcat(name, "signed ");
  if (ddp->dd_attr & DT_DA_UNSIGNED)
   (void) strcat(name, "unsigned ");
  if (ddp->dd_attr & DT_DA_SHORT)
   (void) strcat(name, "short ");
  if (ddp->dd_attr & DT_DA_LONG)
   (void) strcat(name, "long ");
  if (ddp->dd_attr & DT_DA_LONGLONG)
   (void) strcat(name, "long long ");
  if (ddp->dd_attr == 0 && ddp->dd_name == ((void*)0))
   (void) strcat(name, "int");
  break;
 case 130:
  (void) strcpy(name, "struct ");
  break;
 case 128:
  (void) strcpy(name, "union ");
  break;
 case 133:
  (void) strcpy(name, "enum ");
  break;
 case 129:
  break;
 default:
  xywarn(D_UNKNOWN, "internal error -- "
      "bad decl kind %u\n", ddp->dd_kind);
  return (-1);
 }





 if (ddp->dd_name != ((void*)0) && (ddp->dd_kind != 131 ||
     (ddp->dd_attr & (DT_DA_SHORT | DT_DA_LONG | DT_DA_LONGLONG)) == 0))
  (void) strcat(name, ddp->dd_name);






 if ((rv = dt_type_lookup(name, tip)) == 0)
  return (rv);

 switch (ddp->dd_kind) {
 case 130:
 case 128:
 case 133:
  type = ctf_add_forward(dmp->dm_ctfp, flag,
      ddp->dd_name, ddp->dd_kind);
  break;
 default:
  xywarn(D_UNKNOWN, "failed to resolve type %s: %s\n", name,
      dtrace_errmsg(dtp, dtrace_errno(dtp)));
  return (rv);
 }

 if (type == CTF_ERR || ctf_update(dmp->dm_ctfp) == CTF_ERR) {
  xywarn(D_UNKNOWN, "failed to add forward tag for %s: %s\n",
      name, ctf_errmsg(ctf_errno(dmp->dm_ctfp)));
  return (-1);
 }

 ddp->dd_ctfp = dmp->dm_ctfp;
 ddp->dd_type = type;

 tip->dtt_object = dmp->dm_name;
 tip->dtt_ctfp = dmp->dm_ctfp;
 tip->dtt_type = type;

 return (0);
}
