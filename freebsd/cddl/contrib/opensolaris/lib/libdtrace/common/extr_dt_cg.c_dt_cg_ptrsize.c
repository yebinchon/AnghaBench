
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
typedef int ssize_t ;
typedef int dt_regset_t ;
struct TYPE_8__ {int dn_type; int * dn_ctfp; } ;
typedef TYPE_2__ dt_node_t ;
typedef int dt_irlist_t ;
typedef int dif_instr_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;
struct TYPE_9__ {int ctr_contents; } ;
typedef TYPE_3__ ctf_arinfo_t ;
struct TYPE_10__ {int pcb_jmpbuf; TYPE_1__* pcb_hdl; } ;
struct TYPE_7__ {int dt_ctferr; } ;


 scalar_t__ CTF_K_ARRAY ;
 scalar_t__ CTF_K_POINTER ;
 int DIF_INSTR_FMT (scalar_t__,int,int,int) ;
 int DT_LBL_NONE ;
 int EDT_CTF ;
 int assert (int) ;
 scalar_t__ ctf_array_info (int *,int ,TYPE_3__*) ;
 int ctf_errno (int *) ;
 scalar_t__ ctf_type_kind (int *,int ) ;
 int ctf_type_reference (int *,int ) ;
 int ctf_type_resolve (int *,int ) ;
 int ctf_type_size (int *,int ) ;
 int dt_cg_node_alloc (int ,int ) ;
 int dt_cg_setx (int *,int,int) ;
 int dt_irlist_append (int *,int ) ;
 int dt_regset_alloc (int *) ;
 int dt_regset_free (int *,int) ;
 int longjmp (int ,int ) ;
 TYPE_4__* yypcb ;

__attribute__((used)) static void
dt_cg_ptrsize(dt_node_t *dnp, dt_irlist_t *dlp, dt_regset_t *drp,
    uint_t op, int dreg)
{
 ctf_file_t *ctfp = dnp->dn_ctfp;
 ctf_arinfo_t r;
 dif_instr_t instr;
 ctf_id_t type;
 uint_t kind;
 ssize_t size;
 int sreg;

 type = ctf_type_resolve(ctfp, dnp->dn_type);
 kind = ctf_type_kind(ctfp, type);
 assert(kind == CTF_K_POINTER || kind == CTF_K_ARRAY);

 if (kind == CTF_K_ARRAY) {
  if (ctf_array_info(ctfp, type, &r) != 0) {
   yypcb->pcb_hdl->dt_ctferr = ctf_errno(ctfp);
   longjmp(yypcb->pcb_jmpbuf, EDT_CTF);
  }
  type = r.ctr_contents;
 } else
  type = ctf_type_reference(ctfp, type);

 if ((size = ctf_type_size(ctfp, type)) == 1)
  return;

 sreg = dt_regset_alloc(drp);
 dt_cg_setx(dlp, sreg, size);
 instr = DIF_INSTR_FMT(op, dreg, sreg, dreg);
 dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));
 dt_regset_free(drp, sreg);
}
