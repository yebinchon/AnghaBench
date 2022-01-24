#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  dt_regset_t ;
struct TYPE_6__ {int dn_flags; int /*<<< orphan*/  dn_reg; } ;
typedef  TYPE_1__ dt_node_t ;
typedef  int /*<<< orphan*/  dt_irlist_t ;
typedef  int /*<<< orphan*/  dif_instr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIF_OP_SLL ; 
 int /*<<< orphan*/  DIF_OP_SRA ; 
 int /*<<< orphan*/  DIF_OP_SRL ; 
 int /*<<< orphan*/  DT_LBL_NONE ; 
 int DT_NF_SIGNED ; 
 int NBBY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*) ; 
 size_t FUNC5 (TYPE_1__ const*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC8(const dt_node_t *src, const dt_node_t *dst,
    dt_irlist_t *dlp, dt_regset_t *drp)
{
	size_t srcsize = FUNC5(src);
	size_t dstsize = FUNC5(dst);

	dif_instr_t instr;
	int rg;

	if (!FUNC4(dst))
		return; /* not a scalar */
	if (dstsize == srcsize &&
	    ((src->dn_flags ^ dst->dn_flags) & DT_NF_SIGNED) != 0)
		return; /* not narrowing or changing signed-ness */
	if (dstsize > srcsize && (src->dn_flags & DT_NF_SIGNED) == 0)
		return; /* nothing to do in this case */

	rg = FUNC6(drp);

	if (dstsize > srcsize) {
		int n = sizeof (uint64_t) * NBBY - srcsize * NBBY;
		int s = (dstsize - srcsize) * NBBY;

		FUNC2(dlp, rg, n);

		instr = FUNC0(DIF_OP_SLL, src->dn_reg, rg, dst->dn_reg);
		FUNC3(dlp, FUNC1(DT_LBL_NONE, instr));

		if ((dst->dn_flags & DT_NF_SIGNED) || n == s) {
			instr = FUNC0(DIF_OP_SRA,
			    dst->dn_reg, rg, dst->dn_reg);
			FUNC3(dlp,
			    FUNC1(DT_LBL_NONE, instr));
		} else {
			FUNC2(dlp, rg, s);
			instr = FUNC0(DIF_OP_SRA,
			    dst->dn_reg, rg, dst->dn_reg);
			FUNC3(dlp,
			    FUNC1(DT_LBL_NONE, instr));
			FUNC2(dlp, rg, n - s);
			instr = FUNC0(DIF_OP_SRL,
			    dst->dn_reg, rg, dst->dn_reg);
			FUNC3(dlp,
			    FUNC1(DT_LBL_NONE, instr));
		}
	} else if (dstsize != sizeof (uint64_t)) {
		int n = sizeof (uint64_t) * NBBY - dstsize * NBBY;

		FUNC2(dlp, rg, n);

		instr = FUNC0(DIF_OP_SLL, src->dn_reg, rg, dst->dn_reg);
		FUNC3(dlp, FUNC1(DT_LBL_NONE, instr));

		instr = FUNC0((dst->dn_flags & DT_NF_SIGNED) ?
		    DIF_OP_SRA : DIF_OP_SRL, dst->dn_reg, rg, dst->dn_reg);
		FUNC3(dlp, FUNC1(DT_LBL_NONE, instr));
	}

	FUNC7(drp, rg);
}