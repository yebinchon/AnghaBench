
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_78__ TYPE_9__ ;
typedef struct TYPE_77__ TYPE_8__ ;
typedef struct TYPE_76__ TYPE_7__ ;
typedef struct TYPE_75__ TYPE_6__ ;
typedef struct TYPE_74__ TYPE_4__ ;
typedef struct TYPE_73__ TYPE_3__ ;
typedef struct TYPE_72__ TYPE_2__ ;
typedef struct TYPE_71__ TYPE_1__ ;
typedef struct TYPE_70__ TYPE_11__ ;
typedef struct TYPE_69__ TYPE_10__ ;


typedef int ulong_t ;
typedef int uint_t ;
typedef long ssize_t ;
struct TYPE_73__ {int dx_arg; int dts_name; int dts_object; TYPE_2__* dx_ident; } ;
typedef TYPE_3__ dtrace_syminfo_t ;
struct TYPE_74__ {int dt_ctferr; } ;
typedef TYPE_4__ dtrace_hdl_t ;
typedef TYPE_3__ dt_xlator_t ;
typedef int dt_regset_t ;
struct TYPE_75__ {int dn_op; int dn_reg; int dn_flags; int dn_kind; size_t dn_value; int dn_type; TYPE_8__* dn_ident; int dn_args; int dn_string; struct TYPE_75__* dn_left; struct TYPE_75__* dn_right; int * dn_ctfp; struct TYPE_75__* dn_membexpr; int dn_xmember; TYPE_3__* dn_xlator; struct TYPE_75__* dn_child; } ;
typedef TYPE_6__ dt_node_t ;
struct TYPE_76__ {TYPE_1__* dl_last; } ;
typedef TYPE_7__ dt_irlist_t ;
struct TYPE_77__ {int di_flags; int di_id; TYPE_3__* di_data; int di_kind; int di_name; } ;
typedef TYPE_8__ dt_ident_t ;
typedef int dif_instr_t ;
struct TYPE_78__ {size_t ctm_offset; int ctm_type; } ;
typedef TYPE_9__ ctf_membinfo_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;
struct TYPE_72__ {int di_flags; int di_id; } ;
struct TYPE_71__ {int di_extern; } ;
struct TYPE_70__ {TYPE_4__* pcb_hdl; int pcb_jmpbuf; int pcb_strtab; } ;
struct TYPE_69__ {int st_value; } ;
typedef TYPE_10__ GElf_Sym ;


 int DIF_INSTR_CALL (int,int) ;
 int DIF_INSTR_FMT (int ,int,int,int) ;
 int DIF_INSTR_LDV (int,int,int) ;
 int DIF_INSTR_LOAD (int ,int,int) ;
 int DIF_INSTR_MOV (int,int) ;
 int DIF_INSTR_NOT (int,int) ;
 int DIF_INSTR_SETS (int ,int) ;
 int DIF_INSTR_XLATE (int,int ,int) ;
 int DIF_OP_ADD ;
 int DIF_OP_AND ;
 int DIF_OP_BE ;
 int DIF_OP_BG ;
 int DIF_OP_BGE ;
 int DIF_OP_BGEU ;
 int DIF_OP_BGU ;
 int DIF_OP_BL ;
 int DIF_OP_BLE ;
 int DIF_OP_BLEU ;
 int DIF_OP_BLU ;
 int DIF_OP_BNE ;
 int DIF_OP_LDGS ;
 int DIF_OP_LDLS ;
 int DIF_OP_LDTS ;
 int DIF_OP_MUL ;
 int DIF_OP_OR ;
 int DIF_OP_SDIV ;
 int DIF_OP_SLL ;
 int DIF_OP_SRA ;
 int DIF_OP_SREM ;
 int DIF_OP_SRL ;
 int DIF_OP_SUB ;
 int DIF_OP_UDIV ;
 int DIF_OP_UREM ;
 int DIF_OP_XLARG ;
 int DIF_OP_XLATE ;
 int DIF_OP_XOR ;
 int DIF_REG_R0 ;
 long DIF_STROFF_MAX ;
 int DIF_VAR_ARGS ;
 int DIF_VAR_ARRAY_MAX ;
 int DT_IDENT_ARRAY ;
 int DT_IDENT_FUNC ;
 int DT_IDENT_XLPTR ;
 int DT_IDENT_XLSOU ;
 int DT_IDFLG_CGREG ;
 int DT_IDFLG_DIFR ;
 int DT_IDFLG_INLINE ;
 int DT_IDFLG_LOCAL ;
 int DT_IDFLG_TLS ;
 int DT_LBL_NONE ;
 int DT_NF_BITFIELD ;
 int DT_NF_REF ;
 int DT_NF_SIGNED ;
 int DT_NF_USERLAND ;

 int DT_NODE_IDENT ;
 int DT_NODE_OP2 ;
 int DT_NODE_STRING ;


 int DT_NODE_XLATOR ;
 int D_CG_EXPR ;
 int D_UNKNOWN ;
 int EDT_CTF ;
 int EDT_NOMEM ;
 int EDT_STR2BIG ;
 size_t NBBY ;
 int assert (int) ;
 int ctf_errno (int *) ;
 int ctf_type_reference (int *,int ) ;
 int ctf_type_resolve (int *,int ) ;
 int dnerror (TYPE_6__*,int ,char*,int ,int ) ;
 int dt_cg_arglist (TYPE_8__*,int ,TYPE_7__*,int *) ;
 int dt_cg_arithmetic_op (TYPE_6__*,TYPE_7__*,int *,int ) ;
 int dt_cg_array_op (TYPE_6__*,TYPE_7__*,int *) ;
 int dt_cg_asgn_op (TYPE_6__*,TYPE_7__*,int *) ;
 int dt_cg_assoc_op (TYPE_6__*,TYPE_7__*,int *) ;
 int dt_cg_compare_op (TYPE_6__*,TYPE_7__*,int *,int ) ;
 int dt_cg_compare_signed (TYPE_6__*) ;
 int dt_cg_field_get (TYPE_6__*,TYPE_7__*,int *,int *,TYPE_9__*) ;
 int dt_cg_inline (TYPE_6__*,TYPE_7__*,int *) ;
 int dt_cg_load (TYPE_6__*,int *,int ) ;
 int dt_cg_logical_and (TYPE_6__*,TYPE_7__*,int *) ;
 int dt_cg_logical_neg (TYPE_6__*,TYPE_7__*,int *) ;
 int dt_cg_logical_or (TYPE_6__*,TYPE_7__*,int *) ;
 int dt_cg_logical_xor (TYPE_6__*,TYPE_7__*,int *) ;
 int * dt_cg_membinfo (int *,int ,int ,TYPE_9__*) ;
 int dt_cg_node_alloc (int ,int ) ;
 int dt_cg_postarith_op (TYPE_6__*,TYPE_7__*,int *,int ) ;
 int dt_cg_prearith_op (TYPE_6__*,TYPE_7__*,int *,int ) ;
 int dt_cg_setx (TYPE_7__*,int,size_t) ;
 int dt_cg_ternary_op (TYPE_6__*,TYPE_7__*,int *) ;
 int dt_cg_typecast (TYPE_6__*,TYPE_6__*,TYPE_7__*,int *) ;
 int dt_cg_xlate_expand (TYPE_6__*,TYPE_8__*,TYPE_7__*,int *) ;
 int dt_cg_xsetx (TYPE_7__*,TYPE_8__*,int ,int,int ) ;
 int dt_idkind_name (int ) ;
 int dt_irlist_append (TYPE_7__*,int ) ;
 int dt_node_is_dynamic (TYPE_6__*) ;
 TYPE_8__* dt_node_resolve (TYPE_6__*,int ) ;
 size_t dt_node_sizeof (TYPE_6__*) ;
 void* dt_regset_alloc (int *) ;
 int dt_regset_free (int *,int) ;
 long dt_strtab_insert (int ,int ) ;
 TYPE_6__* dt_xlator_member (TYPE_3__*,int ) ;
 int dtrace_errmsg (TYPE_4__*,int ) ;
 int dtrace_errno (TYPE_4__*) ;
 int dtrace_lookup_by_name (TYPE_4__*,int ,int ,TYPE_10__*,int *) ;
 int longjmp (int ,int ) ;
 int xyerror (int ,char*,int,...) ;
 TYPE_11__* yypcb ;

__attribute__((used)) static void
dt_cg_node(dt_node_t *dnp, dt_irlist_t *dlp, dt_regset_t *drp)
{
 ctf_file_t *ctfp = dnp->dn_ctfp;
 ctf_file_t *octfp;
 ctf_membinfo_t m;
 ctf_id_t type;

 dif_instr_t instr;
 dt_ident_t *idp;
 ssize_t stroff;
 uint_t op;

 switch (dnp->dn_op) {
 case 170:
  dt_cg_node(dnp->dn_left, dlp, drp);
  dt_regset_free(drp, dnp->dn_left->dn_reg);
  dt_cg_node(dnp->dn_right, dlp, drp);
  dnp->dn_reg = dnp->dn_right->dn_reg;
  break;

 case 174:
  dt_cg_node(dnp->dn_right, dlp, drp);
  dnp->dn_reg = dnp->dn_right->dn_reg;
  dt_cg_asgn_op(dnp, dlp, drp);
  break;

 case 176:
  dt_cg_arithmetic_op(dnp, dlp, drp, DIF_OP_ADD);
  dt_cg_asgn_op(dnp, dlp, drp);
  break;

 case 131:
  dt_cg_arithmetic_op(dnp, dlp, drp, DIF_OP_SUB);
  dt_cg_asgn_op(dnp, dlp, drp);
  break;

 case 146:
  dt_cg_arithmetic_op(dnp, dlp, drp, DIF_OP_MUL);
  dt_cg_asgn_op(dnp, dlp, drp);
  break;

 case 167:
  dt_cg_arithmetic_op(dnp, dlp, drp,
      (dnp->dn_flags & DT_NF_SIGNED) ? DIF_OP_SDIV : DIF_OP_UDIV);
  dt_cg_asgn_op(dnp, dlp, drp);
  break;

 case 148:
  dt_cg_arithmetic_op(dnp, dlp, drp,
      (dnp->dn_flags & DT_NF_SIGNED) ? DIF_OP_SREM : DIF_OP_UREM);
  dt_cg_asgn_op(dnp, dlp, drp);
  break;

 case 175:
  dt_cg_arithmetic_op(dnp, dlp, drp, DIF_OP_AND);
  dt_cg_asgn_op(dnp, dlp, drp);
  break;

 case 128:
  dt_cg_arithmetic_op(dnp, dlp, drp, DIF_OP_XOR);
  dt_cg_asgn_op(dnp, dlp, drp);
  break;

 case 144:
  dt_cg_arithmetic_op(dnp, dlp, drp, DIF_OP_OR);
  dt_cg_asgn_op(dnp, dlp, drp);
  break;

 case 152:
  dt_cg_arithmetic_op(dnp, dlp, drp, DIF_OP_SLL);
  dt_cg_asgn_op(dnp, dlp, drp);
  break;

 case 136:
  dt_cg_arithmetic_op(dnp, dlp, drp,
      (dnp->dn_flags & DT_NF_SIGNED) ? DIF_OP_SRA : DIF_OP_SRL);
  dt_cg_asgn_op(dnp, dlp, drp);
  break;

 case 138:
  dt_cg_ternary_op(dnp, dlp, drp);
  break;

 case 155:
  dt_cg_logical_or(dnp, dlp, drp);
  break;

 case 150:
  dt_cg_logical_xor(dnp, dlp, drp);
  break;

 case 158:
  dt_cg_logical_and(dnp, dlp, drp);
  break;

 case 171:
  dt_cg_arithmetic_op(dnp, dlp, drp, DIF_OP_OR);
  break;

 case 129:
  dt_cg_arithmetic_op(dnp, dlp, drp, DIF_OP_XOR);
  break;

 case 173:
  dt_cg_arithmetic_op(dnp, dlp, drp, DIF_OP_AND);
  break;

 case 165:
  dt_cg_compare_op(dnp, dlp, drp, DIF_OP_BE);
  break;

 case 145:
  dt_cg_compare_op(dnp, dlp, drp, DIF_OP_BNE);
  break;

 case 151:
  dt_cg_compare_op(dnp, dlp, drp,
      dt_cg_compare_signed(dnp) ? DIF_OP_BL : DIF_OP_BLU);
  break;

 case 157:
  dt_cg_compare_op(dnp, dlp, drp,
      dt_cg_compare_signed(dnp) ? DIF_OP_BLE : DIF_OP_BLEU);
  break;

 case 163:
  dt_cg_compare_op(dnp, dlp, drp,
      dt_cg_compare_signed(dnp) ? DIF_OP_BG : DIF_OP_BGU);
  break;

 case 164:
  dt_cg_compare_op(dnp, dlp, drp,
      dt_cg_compare_signed(dnp) ? DIF_OP_BGE : DIF_OP_BGEU);
  break;

 case 153:
  dt_cg_arithmetic_op(dnp, dlp, drp, DIF_OP_SLL);
  break;

 case 137:
  dt_cg_arithmetic_op(dnp, dlp, drp,
      (dnp->dn_flags & DT_NF_SIGNED) ? DIF_OP_SRA : DIF_OP_SRL);
  break;

 case 178:
  dt_cg_arithmetic_op(dnp, dlp, drp, DIF_OP_ADD);
  break;

 case 132:
  dt_cg_arithmetic_op(dnp, dlp, drp, DIF_OP_SUB);
  break;

 case 147:
  dt_cg_arithmetic_op(dnp, dlp, drp, DIF_OP_MUL);
  break;

 case 168:
  dt_cg_arithmetic_op(dnp, dlp, drp,
      (dnp->dn_flags & DT_NF_SIGNED) ? DIF_OP_SDIV : DIF_OP_UDIV);
  break;

 case 149:
  dt_cg_arithmetic_op(dnp, dlp, drp,
      (dnp->dn_flags & DT_NF_SIGNED) ? DIF_OP_SREM : DIF_OP_UREM);
  break;

 case 156:
  dt_cg_logical_neg(dnp, dlp, drp);
  break;

 case 172:
  dt_cg_node(dnp->dn_child, dlp, drp);
  dnp->dn_reg = dnp->dn_child->dn_reg;
  instr = DIF_INSTR_NOT(dnp->dn_reg, dnp->dn_reg);
  dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));
  break;

 case 140:
  dt_cg_prearith_op(dnp, dlp, drp, DIF_OP_ADD);
  break;

 case 142:
  dt_cg_postarith_op(dnp, dlp, drp, DIF_OP_ADD);
  break;

 case 141:
  dt_cg_prearith_op(dnp, dlp, drp, DIF_OP_SUB);
  break;

 case 143:
  dt_cg_postarith_op(dnp, dlp, drp, DIF_OP_SUB);
  break;

 case 159:
  dt_cg_node(dnp->dn_child, dlp, drp);
  dnp->dn_reg = dnp->dn_child->dn_reg;
  break;

 case 161:
  dt_cg_node(dnp->dn_child, dlp, drp);
  dnp->dn_reg = dnp->dn_child->dn_reg;

  instr = DIF_INSTR_FMT(DIF_OP_SUB, DIF_REG_R0,
      dnp->dn_reg, dnp->dn_reg);

  dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));
  break;

 case 169:
  dt_cg_node(dnp->dn_child, dlp, drp);
  dnp->dn_reg = dnp->dn_child->dn_reg;

  if (dt_node_is_dynamic(dnp->dn_child)) {
   int reg;
   idp = dt_node_resolve(dnp->dn_child, DT_IDENT_XLPTR);
   assert(idp != ((void*)0));
   reg = dt_cg_xlate_expand(dnp, idp, dlp, drp);

   dt_regset_free(drp, dnp->dn_child->dn_reg);
   dnp->dn_reg = reg;

  } else if (!(dnp->dn_flags & DT_NF_REF)) {
   uint_t ubit = dnp->dn_flags & DT_NF_USERLAND;






   dnp->dn_flags |=
       (dnp->dn_child->dn_flags & DT_NF_USERLAND);

   instr = DIF_INSTR_LOAD(dt_cg_load(dnp, ctfp,
       dnp->dn_type), dnp->dn_reg, dnp->dn_reg);

   dnp->dn_flags &= ~DT_NF_USERLAND;
   dnp->dn_flags |= ubit;

   dt_irlist_append(dlp,
       dt_cg_node_alloc(DT_LBL_NONE, instr));
  }
  break;

 case 177: {
  uint_t rbit = dnp->dn_child->dn_flags & DT_NF_REF;

  dnp->dn_child->dn_flags |= DT_NF_REF;
  dt_cg_node(dnp->dn_child, dlp, drp);
  dnp->dn_reg = dnp->dn_child->dn_reg;

  dnp->dn_child->dn_flags &= ~DT_NF_REF;
  dnp->dn_child->dn_flags |= rbit;
  break;
 }

 case 135: {
  size_t size = dt_node_sizeof(dnp->dn_child);
  dnp->dn_reg = dt_regset_alloc(drp);
  assert(size != 0);
  dt_cg_setx(dlp, dnp->dn_reg, size);
  break;
 }

 case 133:
  dt_cg_node(dnp->dn_child, dlp, drp);
  dnp->dn_reg = dnp->dn_child->dn_reg;
  break;

 case 130:







  if (dnp->dn_kind == DT_NODE_XLATOR) {
   dt_xlator_t *dxp = dnp->dn_xlator;

   assert(dxp->dx_ident->di_flags & DT_IDFLG_CGREG);
   assert(dxp->dx_ident->di_id != 0);

   dnp->dn_reg = dt_regset_alloc(drp);

   if (dxp->dx_arg == -1) {
    instr = DIF_INSTR_MOV(
        dxp->dx_ident->di_id, dnp->dn_reg);
    dt_irlist_append(dlp,
        dt_cg_node_alloc(DT_LBL_NONE, instr));
    op = DIF_OP_XLATE;
   } else
    op = DIF_OP_XLARG;

   instr = DIF_INSTR_XLATE(op, 0, dnp->dn_reg);
   dt_irlist_append(dlp,
       dt_cg_node_alloc(DT_LBL_NONE, instr));

   dlp->dl_last->di_extern = dnp->dn_xmember;
   break;
  }

  assert(dnp->dn_kind == DT_NODE_OP2);
  dt_cg_node(dnp->dn_right, dlp, drp);
  dnp->dn_reg = dnp->dn_right->dn_reg;
  break;

 case 154:
  dt_cg_node(dnp->dn_right, dlp, drp);
  dnp->dn_reg = dnp->dn_right->dn_reg;
  dt_cg_typecast(dnp->dn_right, dnp, dlp, drp);
  break;

 case 139:
 case 166:
  assert(dnp->dn_right->dn_kind == DT_NODE_IDENT);
  dt_cg_node(dnp->dn_left, dlp, drp);
  if ((idp = dt_node_resolve(
      dnp->dn_left, DT_IDENT_XLSOU)) != ((void*)0) ||
      (idp = dt_node_resolve(
      dnp->dn_left, DT_IDENT_XLPTR)) != ((void*)0)) {

   dt_xlator_t *dxp;
   dt_node_t *mnp;

   dxp = idp->di_data;
   mnp = dt_xlator_member(dxp, dnp->dn_right->dn_string);
   assert(mnp != ((void*)0));

   dxp->dx_ident->di_flags |= DT_IDFLG_CGREG;
   dxp->dx_ident->di_id = dnp->dn_left->dn_reg;

   dt_cg_node(mnp->dn_membexpr, dlp, drp);
   dnp->dn_reg = mnp->dn_membexpr->dn_reg;
   dt_cg_typecast(mnp->dn_membexpr, dnp, dlp, drp);

   dxp->dx_ident->di_flags &= ~DT_IDFLG_CGREG;
   dxp->dx_ident->di_id = 0;

   if (dnp->dn_left->dn_reg != -1)
    dt_regset_free(drp, dnp->dn_left->dn_reg);
   break;
  }

  ctfp = dnp->dn_left->dn_ctfp;
  type = ctf_type_resolve(ctfp, dnp->dn_left->dn_type);

  if (dnp->dn_op == 139) {
   type = ctf_type_reference(ctfp, type);
   type = ctf_type_resolve(ctfp, type);
  }

  if ((ctfp = dt_cg_membinfo(octfp = ctfp, type,
      dnp->dn_right->dn_string, &m)) == ((void*)0)) {
   yypcb->pcb_hdl->dt_ctferr = ctf_errno(octfp);
   longjmp(yypcb->pcb_jmpbuf, EDT_CTF);
  }

  if (m.ctm_offset != 0) {
   int reg;

   reg = dt_regset_alloc(drp);






   dt_cg_setx(dlp, reg, m.ctm_offset / NBBY);

   instr = DIF_INSTR_FMT(DIF_OP_ADD,
       dnp->dn_left->dn_reg, reg, dnp->dn_left->dn_reg);

   dt_irlist_append(dlp,
       dt_cg_node_alloc(DT_LBL_NONE, instr));
   dt_regset_free(drp, reg);
  }

  if (!(dnp->dn_flags & DT_NF_REF)) {
   uint_t ubit = dnp->dn_flags & DT_NF_USERLAND;






   dnp->dn_flags |=
       (dnp->dn_left->dn_flags & DT_NF_USERLAND);

   instr = DIF_INSTR_LOAD(dt_cg_load(dnp,
       ctfp, m.ctm_type), dnp->dn_left->dn_reg,
       dnp->dn_left->dn_reg);

   dnp->dn_flags &= ~DT_NF_USERLAND;
   dnp->dn_flags |= ubit;

   dt_irlist_append(dlp,
       dt_cg_node_alloc(DT_LBL_NONE, instr));

   if (dnp->dn_flags & DT_NF_BITFIELD)
    dt_cg_field_get(dnp, dlp, drp, ctfp, &m);
  }

  dnp->dn_reg = dnp->dn_left->dn_reg;
  break;

 case 134:
  dnp->dn_reg = dt_regset_alloc(drp);

  assert(dnp->dn_kind == DT_NODE_STRING);
  stroff = dt_strtab_insert(yypcb->pcb_strtab, dnp->dn_string);

  if (stroff == -1L)
   longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);
  if (stroff > DIF_STROFF_MAX)
   longjmp(yypcb->pcb_jmpbuf, EDT_STR2BIG);

  instr = DIF_INSTR_SETS((ulong_t)stroff, dnp->dn_reg);
  dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));
  break;

 case 162:






  if (dnp->dn_kind == 179 &&
      (dnp->dn_ident->di_flags & DT_IDFLG_CGREG)) {
   dnp->dn_reg = dt_regset_alloc(drp);
   instr = DIF_INSTR_MOV(dnp->dn_ident->di_id,
       dnp->dn_reg);
   dt_irlist_append(dlp,
       dt_cg_node_alloc(DT_LBL_NONE, instr));
   break;
  }






  if (dnp->dn_kind == 179 &&
      (dnp->dn_ident->di_flags & DT_IDFLG_INLINE)) {
   dt_cg_inline(dnp, dlp, drp);
   break;
  }

  switch (dnp->dn_kind) {
  case 181: {
   if ((idp = dnp->dn_ident)->di_kind != DT_IDENT_FUNC) {
    dnerror(dnp, D_CG_EXPR, "%s %s( ) may not be "
        "called from a D expression (D program "
        "context required)\n",
        dt_idkind_name(idp->di_kind), idp->di_name);
   }

   dt_cg_arglist(dnp->dn_ident, dnp->dn_args, dlp, drp);

   dnp->dn_reg = dt_regset_alloc(drp);
   instr = DIF_INSTR_CALL(dnp->dn_ident->di_id,
       dnp->dn_reg);

   dt_irlist_append(dlp,
       dt_cg_node_alloc(DT_LBL_NONE, instr));

   break;
  }

  case 179:
   if (dnp->dn_ident->di_kind == DT_IDENT_XLSOU ||
       dnp->dn_ident->di_kind == DT_IDENT_XLPTR) {




    assert(dnp->dn_ident->di_id == DIF_VAR_ARGS);
    dt_cg_array_op(dnp, dlp, drp);
    break;
   }

   if (dnp->dn_ident->di_kind == DT_IDENT_ARRAY) {
    if (dnp->dn_ident->di_id > DIF_VAR_ARRAY_MAX)
     dt_cg_assoc_op(dnp, dlp, drp);
    else
     dt_cg_array_op(dnp, dlp, drp);
    break;
   }

   dnp->dn_reg = dt_regset_alloc(drp);

   if (dnp->dn_ident->di_flags & DT_IDFLG_LOCAL)
    op = DIF_OP_LDLS;
   else if (dnp->dn_ident->di_flags & DT_IDFLG_TLS)
    op = DIF_OP_LDTS;
   else
    op = DIF_OP_LDGS;

   dnp->dn_ident->di_flags |= DT_IDFLG_DIFR;

   instr = DIF_INSTR_LDV(op,
       dnp->dn_ident->di_id, dnp->dn_reg);

   dt_irlist_append(dlp,
       dt_cg_node_alloc(DT_LBL_NONE, instr));
   break;

  case 180: {
   dtrace_hdl_t *dtp = yypcb->pcb_hdl;
   dtrace_syminfo_t *sip = dnp->dn_ident->di_data;
   GElf_Sym sym;

   if (dtrace_lookup_by_name(dtp,
       sip->dts_object, sip->dts_name, &sym, ((void*)0)) == -1) {
    xyerror(D_UNKNOWN, "cg failed for symbol %s`%s:"
        " %s\n", sip->dts_object, sip->dts_name,
        dtrace_errmsg(dtp, dtrace_errno(dtp)));
   }

   dnp->dn_reg = dt_regset_alloc(drp);
   dt_cg_xsetx(dlp, dnp->dn_ident,
       DT_LBL_NONE, dnp->dn_reg, sym.st_value);

   if (!(dnp->dn_flags & DT_NF_REF)) {
    instr = DIF_INSTR_LOAD(dt_cg_load(dnp, ctfp,
        dnp->dn_type), dnp->dn_reg, dnp->dn_reg);
    dt_irlist_append(dlp,
        dt_cg_node_alloc(DT_LBL_NONE, instr));
   }
   break;
  }

  default:
   xyerror(D_UNKNOWN, "internal error -- node type %u is "
       "not valid for an identifier\n", dnp->dn_kind);
  }
  break;

 case 160:
  dnp->dn_reg = dt_regset_alloc(drp);
  dt_cg_setx(dlp, dnp->dn_reg, dnp->dn_value);
  break;

 default:
  xyerror(D_UNKNOWN, "internal error -- token type %u is not a "
      "valid D compilation token\n", dnp->dn_op);
 }
}
