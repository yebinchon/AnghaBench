
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_7__ {scalar_t__ dtt_type; int dtt_flags; int * dtt_ctfp; int dtt_object; } ;
typedef TYPE_1__ dtrace_typeinfo_t ;
struct TYPE_8__ {void* dt_ctferr; TYPE_3__* dt_ddefs; TYPE_3__* dt_cdefs; } ;
typedef TYPE_2__ dtrace_hdl_t ;
struct TYPE_9__ {int * dm_ctfp; int dm_name; } ;
typedef TYPE_3__ dt_module_t ;
typedef scalar_t__ ctf_id_t ;
typedef int ctf_file_t ;
struct TYPE_10__ {scalar_t__ pcb_idepth; TYPE_2__* pcb_hdl; } ;


 int CTF_ADD_ROOT ;
 scalar_t__ CTF_ERR ;
 int EDT_CTF ;
 scalar_t__ ctf_add_pointer (int *,int ,scalar_t__) ;
 scalar_t__ ctf_add_type (int *,int *,scalar_t__) ;
 void* ctf_errno (int *) ;
 int * ctf_parent_file (int *) ;
 scalar_t__ ctf_type_pointer (int *,scalar_t__) ;
 scalar_t__ ctf_type_resolve (int *,scalar_t__) ;
 scalar_t__ ctf_update (int *) ;
 int dt_set_errno (TYPE_2__*,int ) ;
 TYPE_4__* yypcb ;

int
dt_type_pointer(dtrace_typeinfo_t *tip)
{
 dtrace_hdl_t *dtp = yypcb->pcb_hdl;
 ctf_file_t *ctfp = tip->dtt_ctfp;
 ctf_id_t type = tip->dtt_type;
 ctf_id_t base = ctf_type_resolve(ctfp, type);
 uint_t bflags = tip->dtt_flags;

 dt_module_t *dmp;
 ctf_id_t ptr;

 if ((ptr = ctf_type_pointer(ctfp, type)) != CTF_ERR ||
     (ptr = ctf_type_pointer(ctfp, base)) != CTF_ERR) {
  tip->dtt_type = ptr;
  return (0);
 }

 if (yypcb->pcb_idepth != 0)
  dmp = dtp->dt_cdefs;
 else
  dmp = dtp->dt_ddefs;

 if (ctfp != dmp->dm_ctfp && ctfp != ctf_parent_file(dmp->dm_ctfp) &&
     (type = ctf_add_type(dmp->dm_ctfp, ctfp, type)) == CTF_ERR) {
  dtp->dt_ctferr = ctf_errno(dmp->dm_ctfp);
  return (dt_set_errno(dtp, EDT_CTF));
 }

 ptr = ctf_add_pointer(dmp->dm_ctfp, CTF_ADD_ROOT, type);

 if (ptr == CTF_ERR || ctf_update(dmp->dm_ctfp) == CTF_ERR) {
  dtp->dt_ctferr = ctf_errno(dmp->dm_ctfp);
  return (dt_set_errno(dtp, EDT_CTF));
 }

 tip->dtt_object = dmp->dm_name;
 tip->dtt_ctfp = dmp->dm_ctfp;
 tip->dtt_type = ptr;
 tip->dtt_flags = bflags;

 return (0);
}
