#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint_t ;
struct TYPE_10__ {void* dt_ctferr; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
struct TYPE_11__ {scalar_t__ dn_type; int /*<<< orphan*/ * dn_ctfp; } ;
typedef  TYPE_2__ dt_node_t ;
typedef  scalar_t__ ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;
struct TYPE_12__ {scalar_t__ cte_bits; int cte_format; } ;
typedef  TYPE_3__ ctf_encoding_t ;
struct TYPE_13__ {int /*<<< orphan*/  pcb_jmpbuf; TYPE_1__* pcb_hdl; } ;

/* Variables and functions */
 scalar_t__ CTF_ERR ; 
 int CTF_INT_SIGNED ; 
 scalar_t__ CTF_K_ENUM ; 
 scalar_t__ CTF_K_INTEGER ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  EDT_CTF ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__,TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* yypcb ; 

__attribute__((used)) static void
FUNC8(dt_node_t *lp, dt_node_t *rp, ctf_file_t **ofp, ctf_id_t *otype)
{
	ctf_file_t *lfp = lp->dn_ctfp;
	ctf_id_t ltype = lp->dn_type;

	ctf_file_t *rfp = rp->dn_ctfp;
	ctf_id_t rtype = rp->dn_type;

	ctf_id_t lbase = FUNC6(lfp, ltype);
	uint_t lkind = FUNC5(lfp, lbase);

	ctf_id_t rbase = FUNC6(rfp, rtype);
	uint_t rkind = FUNC5(rfp, rbase);

	dtrace_hdl_t *dtp = yypcb->pcb_hdl;
	ctf_encoding_t le, re;
	uint_t lrank, rrank;

	FUNC2(lkind == CTF_K_INTEGER || lkind == CTF_K_ENUM);
	FUNC2(rkind == CTF_K_INTEGER || rkind == CTF_K_ENUM);

	if (lkind == CTF_K_ENUM) {
		lfp = FUNC0(dtp);
		ltype = lbase = FUNC1(dtp);
	}

	if (rkind == CTF_K_ENUM) {
		rfp = FUNC0(dtp);
		rtype = rbase = FUNC1(dtp);
	}

	if (FUNC4(lfp, lbase, &le) == CTF_ERR) {
		yypcb->pcb_hdl->dt_ctferr = FUNC3(lfp);
		FUNC7(yypcb->pcb_jmpbuf, EDT_CTF);
	}

	if (FUNC4(rfp, rbase, &re) == CTF_ERR) {
		yypcb->pcb_hdl->dt_ctferr = FUNC3(rfp);
		FUNC7(yypcb->pcb_jmpbuf, EDT_CTF);
	}

	/*
	 * Compute an integer rank based on the size and unsigned status.
	 * If rank is identical, pick the "larger" of the equivalent types
	 * which we define as having a larger base ctf_id_t.  If rank is
	 * different, pick the type with the greater rank.
	 */
	lrank = le.cte_bits + ((le.cte_format & CTF_INT_SIGNED) == 0);
	rrank = re.cte_bits + ((re.cte_format & CTF_INT_SIGNED) == 0);

	if (lrank == rrank) {
		if (lbase - rbase < 0)
			goto return_rtype;
		else
			goto return_ltype;
	} else if (lrank > rrank) {
		goto return_ltype;
	} else
		goto return_rtype;

return_ltype:
	*ofp = lfp;
	*otype = ltype;
	return;

return_rtype:
	*ofp = rfp;
	*otype = rtype;
}