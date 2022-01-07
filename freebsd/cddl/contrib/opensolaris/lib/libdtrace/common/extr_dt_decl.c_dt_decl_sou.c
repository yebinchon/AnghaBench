
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
typedef int n ;
struct TYPE_13__ {scalar_t__ dd_type; int * dd_ctfp; } ;
typedef TYPE_5__ dt_decl_t ;
typedef scalar_t__ ctf_id_t ;
typedef int ctf_file_t ;
struct TYPE_12__ {int * ds_next; } ;
struct TYPE_14__ {scalar_t__ pcb_idepth; TYPE_4__ pcb_dstack; TYPE_3__* pcb_hdl; } ;
struct TYPE_11__ {TYPE_2__* dt_ddefs; TYPE_1__* dt_cdefs; } ;
struct TYPE_10__ {int * dm_ctfp; } ;
struct TYPE_9__ {int * dm_ctfp; } ;


 scalar_t__ CTF_ADD_NONROOT ;
 scalar_t__ CTF_ADD_ROOT ;
 scalar_t__ CTF_ERR ;
 scalar_t__ CTF_K_FORWARD ;
 scalar_t__ CTF_K_STRUCT ;
 int DT_TYPE_NAMELEN ;
 int D_DECL_TYPERED ;
 int D_UNKNOWN ;
 scalar_t__ ctf_add_struct (int *,scalar_t__,char*) ;
 scalar_t__ ctf_add_union (int *,scalar_t__,char*) ;
 int ctf_errmsg (int ) ;
 int ctf_errno (int *) ;
 scalar_t__ ctf_lookup_by_name (int *,char*) ;
 scalar_t__ ctf_type_kind (int *,scalar_t__) ;
 scalar_t__ ctf_update (int *) ;
 TYPE_5__* dt_decl_spec (scalar_t__,char*) ;
 int dt_scope_push (int *,scalar_t__) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int xyerror (int ,char*,char*,...) ;
 TYPE_6__* yypcb ;

dt_decl_t *
dt_decl_sou(uint_t kind, char *name)
{
 dt_decl_t *ddp = dt_decl_spec(kind, name);
 char n[DT_TYPE_NAMELEN];
 ctf_file_t *ctfp;
 ctf_id_t type;
 uint_t flag;

 if (yypcb->pcb_idepth != 0)
  ctfp = yypcb->pcb_hdl->dt_cdefs->dm_ctfp;
 else
  ctfp = yypcb->pcb_hdl->dt_ddefs->dm_ctfp;

 if (yypcb->pcb_dstack.ds_next != ((void*)0))
  flag = CTF_ADD_NONROOT;
 else
  flag = CTF_ADD_ROOT;

 (void) snprintf(n, sizeof (n), "%s %s",
     kind == CTF_K_STRUCT ? "struct" : "union",
     name == ((void*)0) ? "(anon)" : name);

 if (name != ((void*)0) && (type = ctf_lookup_by_name(ctfp, n)) != CTF_ERR &&
     ctf_type_kind(ctfp, type) != CTF_K_FORWARD)
  xyerror(D_DECL_TYPERED, "type redeclared: %s\n", n);

 if (kind == CTF_K_STRUCT)
  type = ctf_add_struct(ctfp, flag, name);
 else
  type = ctf_add_union(ctfp, flag, name);

 if (type == CTF_ERR || ctf_update(ctfp) == CTF_ERR) {
  xyerror(D_UNKNOWN, "failed to define %s: %s\n",
      n, ctf_errmsg(ctf_errno(ctfp)));
 }

 ddp->dd_ctfp = ctfp;
 ddp->dd_type = type;

 dt_scope_push(ctfp, type);
 return (ddp);
}
