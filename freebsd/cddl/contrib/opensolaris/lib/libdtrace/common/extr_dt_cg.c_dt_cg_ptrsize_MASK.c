#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  dt_regset_t ;
struct TYPE_8__ {int /*<<< orphan*/  dn_type; int /*<<< orphan*/ * dn_ctfp; } ;
typedef  TYPE_2__ dt_node_t ;
typedef  int /*<<< orphan*/  dt_irlist_t ;
typedef  int /*<<< orphan*/  dif_instr_t ;
typedef  int /*<<< orphan*/  ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;
struct TYPE_9__ {int /*<<< orphan*/  ctr_contents; } ;
typedef  TYPE_3__ ctf_arinfo_t ;
struct TYPE_10__ {int /*<<< orphan*/  pcb_jmpbuf; TYPE_1__* pcb_hdl; } ;
struct TYPE_7__ {int /*<<< orphan*/  dt_ctferr; } ;

/* Variables and functions */
 scalar_t__ CTF_K_ARRAY ; 
 scalar_t__ CTF_K_POINTER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  DT_LBL_NONE ; 
 int /*<<< orphan*/  EDT_CTF ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* yypcb ; 

__attribute__((used)) static void
FUNC14(dt_node_t *dnp, dt_irlist_t *dlp, dt_regset_t *drp,
    uint_t op, int dreg)
{
	ctf_file_t *ctfp = dnp->dn_ctfp;
	ctf_arinfo_t r;
	dif_instr_t instr;
	ctf_id_t type;
	uint_t kind;
	ssize_t size;
	int sreg;

	type = FUNC6(ctfp, dnp->dn_type);
	kind = FUNC4(ctfp, type);
	FUNC1(kind == CTF_K_POINTER || kind == CTF_K_ARRAY);

	if (kind == CTF_K_ARRAY) {
		if (FUNC2(ctfp, type, &r) != 0) {
			yypcb->pcb_hdl->dt_ctferr = FUNC3(ctfp);
			FUNC13(yypcb->pcb_jmpbuf, EDT_CTF);
		}
		type = r.ctr_contents;
	} else
		type = FUNC5(ctfp, type);

	if ((size = FUNC7(ctfp, type)) == 1)
		return; /* multiply or divide by one can be omitted */

	sreg = FUNC11(drp);
	FUNC9(dlp, sreg, size);
	instr = FUNC0(op, dreg, sreg, dreg);
	FUNC10(dlp, FUNC8(DT_LBL_NONE, instr));
	FUNC12(drp, sreg);
}