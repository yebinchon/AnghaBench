#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint_t ;
struct TYPE_11__ {int /*<<< orphan*/  dtt_ctfp; int /*<<< orphan*/  dtt_type; } ;
typedef  TYPE_1__ dtrace_typeinfo_t ;
struct TYPE_12__ {int dn_flags; } ;
typedef  TYPE_2__ dt_node_t ;
typedef  int /*<<< orphan*/  dt_decl_t ;
typedef  int /*<<< orphan*/  dn ;
struct TYPE_13__ {int ctm_offset; int /*<<< orphan*/  ctm_type; } ;
typedef  TYPE_3__ ctf_membinfo_t ;
typedef  int /*<<< orphan*/  ctf_id_t ;
struct TYPE_14__ {int /*<<< orphan*/  pcb_jmpbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ CTF_ERR ; 
 scalar_t__ CTF_K_STRUCT ; 
 scalar_t__ CTF_K_UNION ; 
 int DT_NF_BITFIELD ; 
 int /*<<< orphan*/  D_OFFSETOF_BITFIELD ; 
 int /*<<< orphan*/  D_OFFSETOF_TYPE ; 
 int /*<<< orphan*/  D_UNKNOWN ; 
 int /*<<< orphan*/  EDT_COMPILER ; 
 int NBBY ; 
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_2__* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 scalar_t__ FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_4__* yypcb ; 

dt_node_t *
FUNC16(dt_decl_t *ddp, char *s)
{
	dtrace_typeinfo_t dtt;
	dt_node_t dn;
	char *name;
	int err;

	ctf_membinfo_t ctm;
	ctf_id_t type;
	uint_t kind;

	name = FUNC0(FUNC14(s) + 1);
	(void) FUNC13(name, s);
	FUNC11(s);

	err = FUNC8(ddp, &dtt);
	FUNC7(ddp);

	if (err != 0)
		FUNC12(yypcb->pcb_jmpbuf, EDT_COMPILER);

	type = FUNC6(dtt.dtt_ctfp, dtt.dtt_type);
	kind = FUNC5(dtt.dtt_ctfp, type);

	if (kind != CTF_K_STRUCT && kind != CTF_K_UNION) {
		FUNC15(D_OFFSETOF_TYPE,
		    "offsetof operand must be a struct or union type\n");
	}

	if (FUNC4(dtt.dtt_ctfp, type, name, &ctm) == CTF_ERR) {
		FUNC15(D_UNKNOWN, "failed to determine offset of %s: %s\n",
		    name, FUNC2(FUNC3(dtt.dtt_ctfp)));
	}

	FUNC1(&dn, sizeof (dn));
	FUNC10(&dn, dtt.dtt_ctfp, ctm.ctm_type, B_FALSE);

	if (dn.dn_flags & DT_NF_BITFIELD) {
		FUNC15(D_OFFSETOF_BITFIELD,
		    "cannot take offset of a bit-field: %s\n", name);
	}

	return (FUNC9(ctm.ctm_offset / NBBY));
}