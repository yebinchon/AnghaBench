#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong_t ;
typedef  int /*<<< orphan*/  dt_regset_t ;
struct TYPE_9__ {int dn_flags; int dn_reg; int /*<<< orphan*/  dn_type; int /*<<< orphan*/  dn_ctfp; } ;
typedef  TYPE_1__ dt_node_t ;
typedef  int /*<<< orphan*/  dt_irlist_t ;
typedef  int /*<<< orphan*/  dif_instr_t ;
struct TYPE_10__ {int /*<<< orphan*/  cte_bits; } ;
typedef  TYPE_2__ ctf_encoding_t ;

/* Variables and functions */
 scalar_t__ CTF_ERR ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  DIF_OP_STB ; 
 int /*<<< orphan*/  DIF_OP_STH ; 
 int /*<<< orphan*/  DIF_OP_STW ; 
 int /*<<< orphan*/  DIF_OP_STX ; 
 int /*<<< orphan*/  DT_LBL_NONE ; 
 int DT_NF_BITFIELD ; 
 int DT_NF_REF ; 
 int /*<<< orphan*/  D_UNKNOWN ; 
 int NBBY ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC9 (TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(dt_node_t *src, dt_irlist_t *dlp, dt_regset_t *drp, dt_node_t *dst)
{
	ctf_encoding_t e;
	dif_instr_t instr;
	size_t size;
	int reg;

	/*
	 * If we're loading a bit-field, the size of our store is found by
	 * rounding dst's cte_bits up to a byte boundary and then finding the
	 * nearest power of two to this value (see clp2(), above).
	 */
	if ((dst->dn_flags & DT_NF_BITFIELD) &&
	    FUNC4(dst->dn_ctfp, dst->dn_type, &e) != CTF_ERR)
		size = FUNC3(FUNC2(e.cte_bits, NBBY) / NBBY);
	else
		size = FUNC9(src);

	if (src->dn_flags & DT_NF_REF) {
		reg = FUNC10(drp);
		FUNC7(dlp, reg, size);
		instr = FUNC0(src->dn_reg, reg, dst->dn_reg);
		FUNC8(dlp, FUNC6(DT_LBL_NONE, instr));
		FUNC11(drp, reg);
	} else {
		if (dst->dn_flags & DT_NF_BITFIELD)
			reg = FUNC5(src, dlp, drp, dst);
		else
			reg = src->dn_reg;

		switch (size) {
		case 1:
			instr = FUNC1(DIF_OP_STB, reg, dst->dn_reg);
			break;
		case 2:
			instr = FUNC1(DIF_OP_STH, reg, dst->dn_reg);
			break;
		case 4:
			instr = FUNC1(DIF_OP_STW, reg, dst->dn_reg);
			break;
		case 8:
			instr = FUNC1(DIF_OP_STX, reg, dst->dn_reg);
			break;
		default:
			FUNC12(D_UNKNOWN, "internal error -- cg cannot store "
			    "size %lu when passed by value\n", (ulong_t)size);
		}
		FUNC8(dlp, FUNC6(DT_LBL_NONE, instr));

		if (dst->dn_flags & DT_NF_BITFIELD)
			FUNC11(drp, reg);
	}
}