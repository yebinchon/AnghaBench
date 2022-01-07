
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int dtxl_dreg; int dtxl_sreg; int * dtxl_drp; int * dtxl_dlp; int * dtxl_idp; } ;
typedef TYPE_2__ dt_xlmemb_t ;
typedef int dt_regset_t ;
struct TYPE_8__ {TYPE_1__* dn_ident; int dn_reg; } ;
typedef TYPE_3__ dt_node_t ;
typedef int dt_irlist_t ;
typedef int dt_ident_t ;
struct TYPE_6__ {int di_type; int di_ctfp; } ;


 int DIF_INSTR_CALL (int ,int) ;
 int DIF_INSTR_FLUSHTS ;
 int DIF_INSTR_PUSHTS (int ,int ,int ,int) ;
 int DIF_OP_PUSHTV ;
 int DIF_REG_R0 ;
 int DIF_SUBR_ALLOCA ;
 int DIF_TYPE_CTF ;
 int DT_LBL_NONE ;
 int ctf_member_iter (int ,int ,int ,TYPE_2__*) ;
 size_t ctf_type_size (int ,int ) ;
 int dt_cg_node_alloc (int ,int ) ;
 int dt_cg_setx (int *,int,size_t) ;
 int dt_cg_xlate_member ;
 int dt_irlist_append (int *,int ) ;
 int dt_regset_alloc (int *) ;

__attribute__((used)) static int
dt_cg_xlate_expand(dt_node_t *dnp, dt_ident_t *idp, dt_irlist_t *dlp,
    dt_regset_t *drp)
{
 dt_xlmemb_t dlm;
 uint32_t instr;
 int dreg;
 size_t size;

 dreg = dt_regset_alloc(drp);
 size = ctf_type_size(dnp->dn_ident->di_ctfp, dnp->dn_ident->di_type);


 dt_cg_setx(dlp, dreg, size);

 dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, DIF_INSTR_FLUSHTS));

 instr = DIF_INSTR_PUSHTS(DIF_OP_PUSHTV, DIF_TYPE_CTF, DIF_REG_R0, dreg);
 dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));

 instr = DIF_INSTR_CALL(DIF_SUBR_ALLOCA, dreg);
 dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));


 dlm.dtxl_idp = idp;
 dlm.dtxl_dlp = dlp;
 dlm.dtxl_drp = drp;
 dlm.dtxl_sreg = dnp->dn_reg;
 dlm.dtxl_dreg = dreg;
 (void) ctf_member_iter(dnp->dn_ident->di_ctfp,
     dnp->dn_ident->di_type, dt_cg_xlate_member,
     &dlm);

 return (dreg);
}
