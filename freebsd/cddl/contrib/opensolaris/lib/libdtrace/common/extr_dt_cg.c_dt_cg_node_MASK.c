#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_78__   TYPE_9__ ;
typedef  struct TYPE_77__   TYPE_8__ ;
typedef  struct TYPE_76__   TYPE_7__ ;
typedef  struct TYPE_75__   TYPE_6__ ;
typedef  struct TYPE_74__   TYPE_4__ ;
typedef  struct TYPE_73__   TYPE_3__ ;
typedef  struct TYPE_72__   TYPE_2__ ;
typedef  struct TYPE_71__   TYPE_1__ ;
typedef  struct TYPE_70__   TYPE_11__ ;
typedef  struct TYPE_69__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong_t ;
typedef  int uint_t ;
typedef  long ssize_t ;
struct TYPE_73__ {int dx_arg; int /*<<< orphan*/  dts_name; int /*<<< orphan*/  dts_object; TYPE_2__* dx_ident; } ;
typedef  TYPE_3__ dtrace_syminfo_t ;
struct TYPE_74__ {int /*<<< orphan*/  dt_ctferr; } ;
typedef  TYPE_4__ dtrace_hdl_t ;
typedef  TYPE_3__ dt_xlator_t ;
typedef  int /*<<< orphan*/  dt_regset_t ;
struct TYPE_75__ {int dn_op; int dn_reg; int dn_flags; int dn_kind; size_t dn_value; int /*<<< orphan*/  dn_type; TYPE_8__* dn_ident; int /*<<< orphan*/  dn_args; int /*<<< orphan*/  dn_string; struct TYPE_75__* dn_left; struct TYPE_75__* dn_right; int /*<<< orphan*/ * dn_ctfp; struct TYPE_75__* dn_membexpr; int /*<<< orphan*/  dn_xmember; TYPE_3__* dn_xlator; struct TYPE_75__* dn_child; } ;
typedef  TYPE_6__ dt_node_t ;
struct TYPE_76__ {TYPE_1__* dl_last; } ;
typedef  TYPE_7__ dt_irlist_t ;
struct TYPE_77__ {int di_flags; int di_id; TYPE_3__* di_data; int /*<<< orphan*/  di_kind; int /*<<< orphan*/  di_name; } ;
typedef  TYPE_8__ dt_ident_t ;
typedef  int /*<<< orphan*/  dif_instr_t ;
struct TYPE_78__ {size_t ctm_offset; int /*<<< orphan*/  ctm_type; } ;
typedef  TYPE_9__ ctf_membinfo_t ;
typedef  int /*<<< orphan*/  ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;
struct TYPE_72__ {int di_flags; int di_id; } ;
struct TYPE_71__ {int /*<<< orphan*/  di_extern; } ;
struct TYPE_70__ {TYPE_4__* pcb_hdl; int /*<<< orphan*/  pcb_jmpbuf; int /*<<< orphan*/  pcb_strtab; } ;
struct TYPE_69__ {int /*<<< orphan*/  st_value; } ;
typedef  TYPE_10__ GElf_Sym ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DIF_OP_ADD ; 
 int /*<<< orphan*/  DIF_OP_AND ; 
 int /*<<< orphan*/  DIF_OP_BE ; 
 int /*<<< orphan*/  DIF_OP_BG ; 
 int /*<<< orphan*/  DIF_OP_BGE ; 
 int /*<<< orphan*/  DIF_OP_BGEU ; 
 int /*<<< orphan*/  DIF_OP_BGU ; 
 int /*<<< orphan*/  DIF_OP_BL ; 
 int /*<<< orphan*/  DIF_OP_BLE ; 
 int /*<<< orphan*/  DIF_OP_BLEU ; 
 int /*<<< orphan*/  DIF_OP_BLU ; 
 int /*<<< orphan*/  DIF_OP_BNE ; 
 int DIF_OP_LDGS ; 
 int DIF_OP_LDLS ; 
 int DIF_OP_LDTS ; 
 int /*<<< orphan*/  DIF_OP_MUL ; 
 int /*<<< orphan*/  DIF_OP_OR ; 
 int /*<<< orphan*/  DIF_OP_SDIV ; 
 int /*<<< orphan*/  DIF_OP_SLL ; 
 int /*<<< orphan*/  DIF_OP_SRA ; 
 int /*<<< orphan*/  DIF_OP_SREM ; 
 int /*<<< orphan*/  DIF_OP_SRL ; 
 int /*<<< orphan*/  DIF_OP_SUB ; 
 int /*<<< orphan*/  DIF_OP_UDIV ; 
 int /*<<< orphan*/  DIF_OP_UREM ; 
 int DIF_OP_XLARG ; 
 int DIF_OP_XLATE ; 
 int /*<<< orphan*/  DIF_OP_XOR ; 
 int DIF_REG_R0 ; 
 long DIF_STROFF_MAX ; 
 int DIF_VAR_ARGS ; 
 int DIF_VAR_ARRAY_MAX ; 
 int /*<<< orphan*/  DT_IDENT_ARRAY ; 
 int /*<<< orphan*/  DT_IDENT_FUNC ; 
 int /*<<< orphan*/  DT_IDENT_XLPTR ; 
 int /*<<< orphan*/  DT_IDENT_XLSOU ; 
 int DT_IDFLG_CGREG ; 
 int DT_IDFLG_DIFR ; 
 int DT_IDFLG_INLINE ; 
 int DT_IDFLG_LOCAL ; 
 int DT_IDFLG_TLS ; 
 int /*<<< orphan*/  DT_LBL_NONE ; 
 int DT_NF_BITFIELD ; 
 int DT_NF_REF ; 
 int DT_NF_SIGNED ; 
 int DT_NF_USERLAND ; 
#define  DT_NODE_FUNC 181 
 int DT_NODE_IDENT ; 
 int DT_NODE_OP2 ; 
 int DT_NODE_STRING ; 
#define  DT_NODE_SYM 180 
#define  DT_NODE_VAR 179 
 int DT_NODE_XLATOR ; 
#define  DT_TOK_ADD 178 
#define  DT_TOK_ADDROF 177 
#define  DT_TOK_ADD_EQ 176 
#define  DT_TOK_AND_EQ 175 
#define  DT_TOK_ASGN 174 
#define  DT_TOK_BAND 173 
#define  DT_TOK_BNEG 172 
#define  DT_TOK_BOR 171 
#define  DT_TOK_COMMA 170 
#define  DT_TOK_DEREF 169 
#define  DT_TOK_DIV 168 
#define  DT_TOK_DIV_EQ 167 
#define  DT_TOK_DOT 166 
#define  DT_TOK_EQU 165 
#define  DT_TOK_GE 164 
#define  DT_TOK_GT 163 
#define  DT_TOK_IDENT 162 
#define  DT_TOK_INEG 161 
#define  DT_TOK_INT 160 
#define  DT_TOK_IPOS 159 
#define  DT_TOK_LAND 158 
#define  DT_TOK_LE 157 
#define  DT_TOK_LNEG 156 
#define  DT_TOK_LOR 155 
#define  DT_TOK_LPAR 154 
#define  DT_TOK_LSH 153 
#define  DT_TOK_LSH_EQ 152 
#define  DT_TOK_LT 151 
#define  DT_TOK_LXOR 150 
#define  DT_TOK_MOD 149 
#define  DT_TOK_MOD_EQ 148 
#define  DT_TOK_MUL 147 
#define  DT_TOK_MUL_EQ 146 
#define  DT_TOK_NEQ 145 
#define  DT_TOK_OR_EQ 144 
#define  DT_TOK_POSTDEC 143 
#define  DT_TOK_POSTINC 142 
#define  DT_TOK_PREDEC 141 
#define  DT_TOK_PREINC 140 
#define  DT_TOK_PTR 139 
#define  DT_TOK_QUESTION 138 
#define  DT_TOK_RSH 137 
#define  DT_TOK_RSH_EQ 136 
#define  DT_TOK_SIZEOF 135 
#define  DT_TOK_STRING 134 
#define  DT_TOK_STRINGOF 133 
#define  DT_TOK_SUB 132 
#define  DT_TOK_SUB_EQ 131 
#define  DT_TOK_XLATE 130 
#define  DT_TOK_XOR 129 
#define  DT_TOK_XOR_EQ 128 
 int /*<<< orphan*/  D_CG_EXPR ; 
 int /*<<< orphan*/  D_UNKNOWN ; 
 int /*<<< orphan*/  EDT_CTF ; 
 int /*<<< orphan*/  EDT_NOMEM ; 
 int /*<<< orphan*/  EDT_STR2BIG ; 
 size_t NBBY ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_8__*,int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_7__*,int,size_t) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_6__*,TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int FUNC34 (TYPE_6__*,TYPE_8__*,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_7__*,TYPE_8__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (TYPE_6__*) ; 
 TYPE_8__* FUNC39 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 size_t FUNC40 (TYPE_6__*) ; 
 void* FUNC41 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *,int) ; 
 long FUNC43 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC44 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC45 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (TYPE_4__*) ; 
 int FUNC47 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_10__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ ,char*,int,...) ; 
 TYPE_11__* yypcb ; 

__attribute__((used)) static void
FUNC50(dt_node_t *dnp, dt_irlist_t *dlp, dt_regset_t *drp)
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
	case DT_TOK_COMMA:
		FUNC50(dnp->dn_left, dlp, drp);
		FUNC42(drp, dnp->dn_left->dn_reg);
		FUNC50(dnp->dn_right, dlp, drp);
		dnp->dn_reg = dnp->dn_right->dn_reg;
		break;

	case DT_TOK_ASGN:
		FUNC50(dnp->dn_right, dlp, drp);
		dnp->dn_reg = dnp->dn_right->dn_reg;
		FUNC16(dnp, dlp, drp);
		break;

	case DT_TOK_ADD_EQ:
		FUNC14(dnp, dlp, drp, DIF_OP_ADD);
		FUNC16(dnp, dlp, drp);
		break;

	case DT_TOK_SUB_EQ:
		FUNC14(dnp, dlp, drp, DIF_OP_SUB);
		FUNC16(dnp, dlp, drp);
		break;

	case DT_TOK_MUL_EQ:
		FUNC14(dnp, dlp, drp, DIF_OP_MUL);
		FUNC16(dnp, dlp, drp);
		break;

	case DT_TOK_DIV_EQ:
		FUNC14(dnp, dlp, drp,
		    (dnp->dn_flags & DT_NF_SIGNED) ? DIF_OP_SDIV : DIF_OP_UDIV);
		FUNC16(dnp, dlp, drp);
		break;

	case DT_TOK_MOD_EQ:
		FUNC14(dnp, dlp, drp,
		    (dnp->dn_flags & DT_NF_SIGNED) ? DIF_OP_SREM : DIF_OP_UREM);
		FUNC16(dnp, dlp, drp);
		break;

	case DT_TOK_AND_EQ:
		FUNC14(dnp, dlp, drp, DIF_OP_AND);
		FUNC16(dnp, dlp, drp);
		break;

	case DT_TOK_XOR_EQ:
		FUNC14(dnp, dlp, drp, DIF_OP_XOR);
		FUNC16(dnp, dlp, drp);
		break;

	case DT_TOK_OR_EQ:
		FUNC14(dnp, dlp, drp, DIF_OP_OR);
		FUNC16(dnp, dlp, drp);
		break;

	case DT_TOK_LSH_EQ:
		FUNC14(dnp, dlp, drp, DIF_OP_SLL);
		FUNC16(dnp, dlp, drp);
		break;

	case DT_TOK_RSH_EQ:
		FUNC14(dnp, dlp, drp,
		    (dnp->dn_flags & DT_NF_SIGNED) ? DIF_OP_SRA : DIF_OP_SRL);
		FUNC16(dnp, dlp, drp);
		break;

	case DT_TOK_QUESTION:
		FUNC32(dnp, dlp, drp);
		break;

	case DT_TOK_LOR:
		FUNC25(dnp, dlp, drp);
		break;

	case DT_TOK_LXOR:
		FUNC26(dnp, dlp, drp);
		break;

	case DT_TOK_LAND:
		FUNC23(dnp, dlp, drp);
		break;

	case DT_TOK_BOR:
		FUNC14(dnp, dlp, drp, DIF_OP_OR);
		break;

	case DT_TOK_XOR:
		FUNC14(dnp, dlp, drp, DIF_OP_XOR);
		break;

	case DT_TOK_BAND:
		FUNC14(dnp, dlp, drp, DIF_OP_AND);
		break;

	case DT_TOK_EQU:
		FUNC18(dnp, dlp, drp, DIF_OP_BE);
		break;

	case DT_TOK_NEQ:
		FUNC18(dnp, dlp, drp, DIF_OP_BNE);
		break;

	case DT_TOK_LT:
		FUNC18(dnp, dlp, drp,
		    FUNC19(dnp) ? DIF_OP_BL : DIF_OP_BLU);
		break;

	case DT_TOK_LE:
		FUNC18(dnp, dlp, drp,
		    FUNC19(dnp) ? DIF_OP_BLE : DIF_OP_BLEU);
		break;

	case DT_TOK_GT:
		FUNC18(dnp, dlp, drp,
		    FUNC19(dnp) ? DIF_OP_BG : DIF_OP_BGU);
		break;

	case DT_TOK_GE:
		FUNC18(dnp, dlp, drp,
		    FUNC19(dnp) ? DIF_OP_BGE : DIF_OP_BGEU);
		break;

	case DT_TOK_LSH:
		FUNC14(dnp, dlp, drp, DIF_OP_SLL);
		break;

	case DT_TOK_RSH:
		FUNC14(dnp, dlp, drp,
		    (dnp->dn_flags & DT_NF_SIGNED) ? DIF_OP_SRA : DIF_OP_SRL);
		break;

	case DT_TOK_ADD:
		FUNC14(dnp, dlp, drp, DIF_OP_ADD);
		break;

	case DT_TOK_SUB:
		FUNC14(dnp, dlp, drp, DIF_OP_SUB);
		break;

	case DT_TOK_MUL:
		FUNC14(dnp, dlp, drp, DIF_OP_MUL);
		break;

	case DT_TOK_DIV:
		FUNC14(dnp, dlp, drp,
		    (dnp->dn_flags & DT_NF_SIGNED) ? DIF_OP_SDIV : DIF_OP_UDIV);
		break;

	case DT_TOK_MOD:
		FUNC14(dnp, dlp, drp,
		    (dnp->dn_flags & DT_NF_SIGNED) ? DIF_OP_SREM : DIF_OP_UREM);
		break;

	case DT_TOK_LNEG:
		FUNC24(dnp, dlp, drp);
		break;

	case DT_TOK_BNEG:
		FUNC50(dnp->dn_child, dlp, drp);
		dnp->dn_reg = dnp->dn_child->dn_reg;
		instr = FUNC5(dnp->dn_reg, dnp->dn_reg);
		FUNC37(dlp, FUNC28(DT_LBL_NONE, instr));
		break;

	case DT_TOK_PREINC:
		FUNC30(dnp, dlp, drp, DIF_OP_ADD);
		break;

	case DT_TOK_POSTINC:
		FUNC29(dnp, dlp, drp, DIF_OP_ADD);
		break;

	case DT_TOK_PREDEC:
		FUNC30(dnp, dlp, drp, DIF_OP_SUB);
		break;

	case DT_TOK_POSTDEC:
		FUNC29(dnp, dlp, drp, DIF_OP_SUB);
		break;

	case DT_TOK_IPOS:
		FUNC50(dnp->dn_child, dlp, drp);
		dnp->dn_reg = dnp->dn_child->dn_reg;
		break;

	case DT_TOK_INEG:
		FUNC50(dnp->dn_child, dlp, drp);
		dnp->dn_reg = dnp->dn_child->dn_reg;

		instr = FUNC1(DIF_OP_SUB, DIF_REG_R0,
		    dnp->dn_reg, dnp->dn_reg);

		FUNC37(dlp, FUNC28(DT_LBL_NONE, instr));
		break;

	case DT_TOK_DEREF:
		FUNC50(dnp->dn_child, dlp, drp);
		dnp->dn_reg = dnp->dn_child->dn_reg;

		if (FUNC38(dnp->dn_child)) {
			int reg;
			idp = FUNC39(dnp->dn_child, DT_IDENT_XLPTR);
			FUNC8(idp != NULL);
			reg = FUNC34(dnp, idp, dlp, drp);

			FUNC42(drp, dnp->dn_child->dn_reg);
			dnp->dn_reg = reg;

		} else if (!(dnp->dn_flags & DT_NF_REF)) {
			uint_t ubit = dnp->dn_flags & DT_NF_USERLAND;

			/*
			 * Save and restore DT_NF_USERLAND across dt_cg_load():
			 * we need the sign bit from dnp and the user bit from
			 * dnp->dn_child in order to get the proper opcode.
			 */
			dnp->dn_flags |=
			    (dnp->dn_child->dn_flags & DT_NF_USERLAND);

			instr = FUNC3(FUNC22(dnp, ctfp,
			    dnp->dn_type), dnp->dn_reg, dnp->dn_reg);

			dnp->dn_flags &= ~DT_NF_USERLAND;
			dnp->dn_flags |= ubit;

			FUNC37(dlp,
			    FUNC28(DT_LBL_NONE, instr));
		}
		break;

	case DT_TOK_ADDROF: {
		uint_t rbit = dnp->dn_child->dn_flags & DT_NF_REF;

		dnp->dn_child->dn_flags |= DT_NF_REF; /* force pass-by-ref */
		FUNC50(dnp->dn_child, dlp, drp);
		dnp->dn_reg = dnp->dn_child->dn_reg;

		dnp->dn_child->dn_flags &= ~DT_NF_REF;
		dnp->dn_child->dn_flags |= rbit;
		break;
	}

	case DT_TOK_SIZEOF: {
		size_t size = FUNC40(dnp->dn_child);
		dnp->dn_reg = FUNC41(drp);
		FUNC8(size != 0);
		FUNC31(dlp, dnp->dn_reg, size);
		break;
	}

	case DT_TOK_STRINGOF:
		FUNC50(dnp->dn_child, dlp, drp);
		dnp->dn_reg = dnp->dn_child->dn_reg;
		break;

	case DT_TOK_XLATE:
		/*
		 * An xlate operator appears in either an XLATOR, indicating a
		 * reference to a dynamic translator, or an OP2, indicating
		 * use of the xlate operator in the user's program.  For the
		 * dynamic case, generate an xlate opcode with a reference to
		 * the corresponding member, pre-computed for us in dn_members.
		 */
		if (dnp->dn_kind == DT_NODE_XLATOR) {
			dt_xlator_t *dxp = dnp->dn_xlator;

			FUNC8(dxp->dx_ident->di_flags & DT_IDFLG_CGREG);
			FUNC8(dxp->dx_ident->di_id != 0);

			dnp->dn_reg = FUNC41(drp);

			if (dxp->dx_arg == -1) {
				instr = FUNC4(
				    dxp->dx_ident->di_id, dnp->dn_reg);
				FUNC37(dlp,
				    FUNC28(DT_LBL_NONE, instr));
				op = DIF_OP_XLATE;
			} else
				op = DIF_OP_XLARG;

			instr = FUNC7(op, 0, dnp->dn_reg);
			FUNC37(dlp,
			    FUNC28(DT_LBL_NONE, instr));

			dlp->dl_last->di_extern = dnp->dn_xmember;
			break;
		}

		FUNC8(dnp->dn_kind == DT_NODE_OP2);
		FUNC50(dnp->dn_right, dlp, drp);
		dnp->dn_reg = dnp->dn_right->dn_reg;
		break;

	case DT_TOK_LPAR:
		FUNC50(dnp->dn_right, dlp, drp);
		dnp->dn_reg = dnp->dn_right->dn_reg;
		FUNC33(dnp->dn_right, dnp, dlp, drp);
		break;

	case DT_TOK_PTR:
	case DT_TOK_DOT:
		FUNC8(dnp->dn_right->dn_kind == DT_NODE_IDENT);
		FUNC50(dnp->dn_left, dlp, drp);

		/*
		 * If the left-hand side of PTR or DOT is a dynamic variable,
		 * we expect it to be the output of a D translator.   In this
		 * case, we look up the parse tree corresponding to the member
		 * that is being accessed and run the code generator over it.
		 * We then cast the result as if by the assignment operator.
		 */
		if ((idp = FUNC39(
		    dnp->dn_left, DT_IDENT_XLSOU)) != NULL ||
		    (idp = FUNC39(
		    dnp->dn_left, DT_IDENT_XLPTR)) != NULL) {

			dt_xlator_t *dxp;
			dt_node_t *mnp;

			dxp = idp->di_data;
			mnp = FUNC44(dxp, dnp->dn_right->dn_string);
			FUNC8(mnp != NULL);

			dxp->dx_ident->di_flags |= DT_IDFLG_CGREG;
			dxp->dx_ident->di_id = dnp->dn_left->dn_reg;

			FUNC50(mnp->dn_membexpr, dlp, drp);
			dnp->dn_reg = mnp->dn_membexpr->dn_reg;
			FUNC33(mnp->dn_membexpr, dnp, dlp, drp);

			dxp->dx_ident->di_flags &= ~DT_IDFLG_CGREG;
			dxp->dx_ident->di_id = 0;

			if (dnp->dn_left->dn_reg != -1)
				FUNC42(drp, dnp->dn_left->dn_reg);
			break;
		}

		ctfp = dnp->dn_left->dn_ctfp;
		type = FUNC11(ctfp, dnp->dn_left->dn_type);

		if (dnp->dn_op == DT_TOK_PTR) {
			type = FUNC10(ctfp, type);
			type = FUNC11(ctfp, type);
		}

		if ((ctfp = FUNC27(octfp = ctfp, type,
		    dnp->dn_right->dn_string, &m)) == NULL) {
			yypcb->pcb_hdl->dt_ctferr = FUNC9(octfp);
			FUNC48(yypcb->pcb_jmpbuf, EDT_CTF);
		}

		if (m.ctm_offset != 0) {
			int reg;

			reg = FUNC41(drp);

			/*
			 * If the offset is not aligned on a byte boundary, it
			 * is a bit-field member and we will extract the value
			 * bits below after we generate the appropriate load.
			 */
			FUNC31(dlp, reg, m.ctm_offset / NBBY);

			instr = FUNC1(DIF_OP_ADD,
			    dnp->dn_left->dn_reg, reg, dnp->dn_left->dn_reg);

			FUNC37(dlp,
			    FUNC28(DT_LBL_NONE, instr));
			FUNC42(drp, reg);
		}

		if (!(dnp->dn_flags & DT_NF_REF)) {
			uint_t ubit = dnp->dn_flags & DT_NF_USERLAND;

			/*
			 * Save and restore DT_NF_USERLAND across dt_cg_load():
			 * we need the sign bit from dnp and the user bit from
			 * dnp->dn_left in order to get the proper opcode.
			 */
			dnp->dn_flags |=
			    (dnp->dn_left->dn_flags & DT_NF_USERLAND);

			instr = FUNC3(FUNC22(dnp,
			    ctfp, m.ctm_type), dnp->dn_left->dn_reg,
			    dnp->dn_left->dn_reg);

			dnp->dn_flags &= ~DT_NF_USERLAND;
			dnp->dn_flags |= ubit;

			FUNC37(dlp,
			    FUNC28(DT_LBL_NONE, instr));

			if (dnp->dn_flags & DT_NF_BITFIELD)
				FUNC20(dnp, dlp, drp, ctfp, &m);
		}

		dnp->dn_reg = dnp->dn_left->dn_reg;
		break;

	case DT_TOK_STRING:
		dnp->dn_reg = FUNC41(drp);

		FUNC8(dnp->dn_kind == DT_NODE_STRING);
		stroff = FUNC43(yypcb->pcb_strtab, dnp->dn_string);

		if (stroff == -1L)
			FUNC48(yypcb->pcb_jmpbuf, EDT_NOMEM);
		if (stroff > DIF_STROFF_MAX)
			FUNC48(yypcb->pcb_jmpbuf, EDT_STR2BIG);

		instr = FUNC6((ulong_t)stroff, dnp->dn_reg);
		FUNC37(dlp, FUNC28(DT_LBL_NONE, instr));
		break;

	case DT_TOK_IDENT:
		/*
		 * If the specified identifier is a variable on which we have
		 * set the code generator register flag, then this variable
		 * has already had code generated for it and saved in di_id.
		 * Allocate a new register and copy the existing value to it.
		 */
		if (dnp->dn_kind == DT_NODE_VAR &&
		    (dnp->dn_ident->di_flags & DT_IDFLG_CGREG)) {
			dnp->dn_reg = FUNC41(drp);
			instr = FUNC4(dnp->dn_ident->di_id,
			    dnp->dn_reg);
			FUNC37(dlp,
			    FUNC28(DT_LBL_NONE, instr));
			break;
		}

		/*
		 * Identifiers can represent function calls, variable refs, or
		 * symbols.  First we check for inlined variables, and handle
		 * them by generating code for the inline parse tree.
		 */
		if (dnp->dn_kind == DT_NODE_VAR &&
		    (dnp->dn_ident->di_flags & DT_IDFLG_INLINE)) {
			FUNC21(dnp, dlp, drp);
			break;
		}

		switch (dnp->dn_kind) {
		case DT_NODE_FUNC: {
			if ((idp = dnp->dn_ident)->di_kind != DT_IDENT_FUNC) {
				FUNC12(dnp, D_CG_EXPR, "%s %s( ) may not be "
				    "called from a D expression (D program "
				    "context required)\n",
				    FUNC36(idp->di_kind), idp->di_name);
			}

			FUNC13(dnp->dn_ident, dnp->dn_args, dlp, drp);

			dnp->dn_reg = FUNC41(drp);
			instr = FUNC0(dnp->dn_ident->di_id,
			    dnp->dn_reg);

			FUNC37(dlp,
			    FUNC28(DT_LBL_NONE, instr));

			break;
		}

		case DT_NODE_VAR:
			if (dnp->dn_ident->di_kind == DT_IDENT_XLSOU ||
			    dnp->dn_ident->di_kind == DT_IDENT_XLPTR) {
				/*
				 * This can only happen if we have translated
				 * args[].  See dt_idcook_args() for details.
				 */
				FUNC8(dnp->dn_ident->di_id == DIF_VAR_ARGS);
				FUNC15(dnp, dlp, drp);
				break;
			}

			if (dnp->dn_ident->di_kind == DT_IDENT_ARRAY) {
				if (dnp->dn_ident->di_id > DIF_VAR_ARRAY_MAX)
					FUNC17(dnp, dlp, drp);
				else
					FUNC15(dnp, dlp, drp);
				break;
			}

			dnp->dn_reg = FUNC41(drp);

			if (dnp->dn_ident->di_flags & DT_IDFLG_LOCAL)
				op = DIF_OP_LDLS;
			else if (dnp->dn_ident->di_flags & DT_IDFLG_TLS)
				op = DIF_OP_LDTS;
			else
				op = DIF_OP_LDGS;

			dnp->dn_ident->di_flags |= DT_IDFLG_DIFR;

			instr = FUNC2(op,
			    dnp->dn_ident->di_id, dnp->dn_reg);

			FUNC37(dlp,
			    FUNC28(DT_LBL_NONE, instr));
			break;

		case DT_NODE_SYM: {
			dtrace_hdl_t *dtp = yypcb->pcb_hdl;
			dtrace_syminfo_t *sip = dnp->dn_ident->di_data;
			GElf_Sym sym;

			if (FUNC47(dtp,
			    sip->dts_object, sip->dts_name, &sym, NULL) == -1) {
				FUNC49(D_UNKNOWN, "cg failed for symbol %s`%s:"
				    " %s\n", sip->dts_object, sip->dts_name,
				    FUNC45(dtp, FUNC46(dtp)));
			}

			dnp->dn_reg = FUNC41(drp);
			FUNC35(dlp, dnp->dn_ident,
			    DT_LBL_NONE, dnp->dn_reg, sym.st_value);

			if (!(dnp->dn_flags & DT_NF_REF)) {
				instr = FUNC3(FUNC22(dnp, ctfp,
				    dnp->dn_type), dnp->dn_reg, dnp->dn_reg);
				FUNC37(dlp,
				    FUNC28(DT_LBL_NONE, instr));
			}
			break;
		}

		default:
			FUNC49(D_UNKNOWN, "internal error -- node type %u is "
			    "not valid for an identifier\n", dnp->dn_kind);
		}
		break;

	case DT_TOK_INT:
		dnp->dn_reg = FUNC41(drp);
		FUNC31(dlp, dnp->dn_reg, dnp->dn_value);
		break;

	default:
		FUNC49(D_UNKNOWN, "internal error -- token type %u is not a "
		    "valid D compilation token\n", dnp->dn_op);
	}
}