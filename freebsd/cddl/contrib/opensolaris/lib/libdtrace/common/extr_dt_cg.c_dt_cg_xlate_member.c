
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t ulong_t ;
typedef int uint32_t ;
struct TYPE_12__ {int dtxl_dreg; scalar_t__ dtxl_sreg; int * dtxl_drp; int * dtxl_dlp; TYPE_5__* dtxl_idp; } ;
typedef TYPE_2__ dt_xlmemb_t ;
struct TYPE_13__ {TYPE_1__* dx_ident; } ;
typedef TYPE_3__ dt_xlator_t ;
typedef int dt_regset_t ;
struct TYPE_14__ {TYPE_8__* dn_membexpr; } ;
typedef TYPE_4__ dt_node_t ;
typedef int dt_irlist_t ;
struct TYPE_15__ {TYPE_3__* di_data; } ;
typedef TYPE_5__ dt_ident_t ;
typedef int ctf_id_t ;
struct TYPE_16__ {int dn_reg; int dn_type; int dn_ctfp; } ;
struct TYPE_11__ {scalar_t__ di_id; int di_flags; } ;


 int DIF_INSTR_CALL (int ,int) ;
 int DIF_INSTR_COPYS (int,int,int) ;
 int DIF_INSTR_FLUSHTS ;
 int DIF_INSTR_FMT (int ,int ,int,int) ;
 int DIF_INSTR_PUSHTS (int ,int ,int ,int) ;
 int DIF_INSTR_STORE (int ,int,int) ;
 int DIF_OP_ADD ;
 int DIF_OP_PUSHTV ;
 int DIF_OP_STB ;
 int DIF_OP_STH ;
 int DIF_OP_STW ;
 int DIF_OP_STX ;
 int DIF_REG_R0 ;
 int DIF_SUBR_BCOPY ;
 int DIF_TYPE_CTF ;
 int DT_IDFLG_CGREG ;
 int DT_LBL_NONE ;
 int D_UNKNOWN ;
 size_t NBBY ;
 size_t ctf_type_size (int ,int ) ;
 int dt_cg_node (TYPE_8__*,int *,int *) ;
 int dt_cg_node_alloc (int ,int ) ;
 int dt_cg_setx (int *,int,size_t) ;
 int dt_irlist_append (int *,int ) ;
 scalar_t__ dt_node_is_scalar (TYPE_8__*) ;
 scalar_t__ dt_node_is_string (TYPE_8__*) ;
 int dt_regset_alloc (int *) ;
 int dt_regset_free (int *,int) ;
 TYPE_4__* dt_xlator_member (TYPE_3__*,char const*) ;
 int xyerror (int ,char*,size_t) ;

__attribute__((used)) static int
dt_cg_xlate_member(const char *name, ctf_id_t type, ulong_t off, void *arg)
{
 dt_xlmemb_t *dx = arg;
 dt_ident_t *idp = dx->dtxl_idp;
 dt_irlist_t *dlp = dx->dtxl_dlp;
 dt_regset_t *drp = dx->dtxl_drp;

 dt_node_t *mnp;
 dt_xlator_t *dxp;

 int reg, treg;
 uint32_t instr;
 size_t size;


 dxp = idp->di_data;
 mnp = dt_xlator_member(dxp, name);


 if (mnp == ((void*)0))
  return (0);

 dxp->dx_ident->di_flags |= DT_IDFLG_CGREG;
 dxp->dx_ident->di_id = dx->dtxl_sreg;

 dt_cg_node(mnp->dn_membexpr, dlp, drp);

 dxp->dx_ident->di_flags &= ~DT_IDFLG_CGREG;
 dxp->dx_ident->di_id = 0;

 treg = mnp->dn_membexpr->dn_reg;


 reg = dt_regset_alloc(drp);

 dt_cg_setx(dlp, reg, off / NBBY);
 instr = DIF_INSTR_FMT(DIF_OP_ADD, dx->dtxl_dreg, reg, reg);
 dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));

 size = ctf_type_size(mnp->dn_membexpr->dn_ctfp,
     mnp->dn_membexpr->dn_type);
 if (dt_node_is_scalar(mnp->dn_membexpr)) {



  switch (size) {
  case 1:
   instr = DIF_INSTR_STORE(DIF_OP_STB, treg, reg);
   break;
  case 2:
   instr = DIF_INSTR_STORE(DIF_OP_STH, treg, reg);
   break;
  case 4:
   instr = DIF_INSTR_STORE(DIF_OP_STW, treg, reg);
   break;
  case 8:
   instr = DIF_INSTR_STORE(DIF_OP_STX, treg, reg);
   break;
  default:
   xyerror(D_UNKNOWN, "internal error -- unexpected "
       "size: %lu\n", (ulong_t)size);
  }

  dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));

 } else if (dt_node_is_string(mnp->dn_membexpr)) {
  int szreg;




  szreg = dt_regset_alloc(drp);
  dt_cg_setx(dlp, szreg, size);
  instr = DIF_INSTR_COPYS(treg, szreg, reg);
  dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));
  dt_regset_free(drp, szreg);
 } else {
  int szreg;




  szreg = dt_regset_alloc(drp);
  dt_cg_setx(dlp, szreg, size);
  dt_irlist_append(dlp,
      dt_cg_node_alloc(DT_LBL_NONE, DIF_INSTR_FLUSHTS));
  instr = DIF_INSTR_PUSHTS(DIF_OP_PUSHTV, DIF_TYPE_CTF,
      DIF_REG_R0, treg);
  dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));
  instr = DIF_INSTR_PUSHTS(DIF_OP_PUSHTV, DIF_TYPE_CTF,
      DIF_REG_R0, reg);
  dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));
  instr = DIF_INSTR_PUSHTS(DIF_OP_PUSHTV, DIF_TYPE_CTF,
      DIF_REG_R0, szreg);
  dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));
  instr = DIF_INSTR_CALL(DIF_SUBR_BCOPY, szreg);
  dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));
  dt_regset_free(drp, szreg);
 }

 dt_regset_free(drp, reg);
 dt_regset_free(drp, treg);

 return (0);
}
