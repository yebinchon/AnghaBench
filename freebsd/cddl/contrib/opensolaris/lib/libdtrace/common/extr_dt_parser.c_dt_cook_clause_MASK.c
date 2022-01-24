#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  jmp_buf ;
struct TYPE_13__ {int /*<<< orphan*/  dn_acts; TYPE_5__* dn_pred; int /*<<< orphan*/  dn_attr; int /*<<< orphan*/  dn_ctxattr; } ;
typedef  TYPE_3__ dt_node_t ;
struct TYPE_15__ {int /*<<< orphan*/  dn_attr; } ;
struct TYPE_11__ {int /*<<< orphan*/  dtp_attr; } ;
struct TYPE_14__ {int /*<<< orphan*/  pcb_jmpbuf; TYPE_2__* pcb_hdl; TYPE_1__ pcb_pinfo; } ;
struct TYPE_12__ {scalar_t__ dt_errtag; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_IDENT_UNDEF ; 
 int /*<<< orphan*/  D_PRED_SCALAR ; 
 int /*<<< orphan*/  D_VAR_UNDEF ; 
 int volatile EDT_COMPILER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int volatile) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 TYPE_4__* yypcb ; 

__attribute__((used)) static dt_node_t *
FUNC11(dt_node_t *dnp, uint_t idflags)
{
	volatile int err, tries;
	jmp_buf ojb;

	/*
	 * Before assigning dn_ctxattr, temporarily assign the probe attribute
	 * to 'dnp' itself to force an attribute check and minimum violation.
	 */
	FUNC3(dnp, yypcb->pcb_pinfo.dtp_attr);
	dnp->dn_ctxattr = yypcb->pcb_pinfo.dtp_attr;

	FUNC0(yypcb->pcb_jmpbuf, ojb, sizeof (jmp_buf));
	tries = 0;

	if (dnp->dn_pred != NULL && (err = FUNC8(yypcb->pcb_jmpbuf)) != 0) {
		FUNC0(ojb, yypcb->pcb_jmpbuf, sizeof (jmp_buf));
		if (tries++ != 0 || err != EDT_COMPILER || (
		    yypcb->pcb_hdl->dt_errtag != FUNC2(D_IDENT_UNDEF) &&
		    yypcb->pcb_hdl->dt_errtag != FUNC2(D_VAR_UNDEF)))
			FUNC7(yypcb->pcb_jmpbuf, err);
	}

	if (tries == 0) {
		FUNC10("action list");

		FUNC3(dnp,
		    FUNC6(&dnp->dn_acts, idflags));

		FUNC0(ojb, yypcb->pcb_jmpbuf, sizeof (jmp_buf));
		FUNC10(NULL);
	}

	if (dnp->dn_pred != NULL) {
		FUNC10("predicate");

		dnp->dn_pred = FUNC4(dnp->dn_pred, idflags);
		FUNC3(dnp,
		    FUNC1(dnp->dn_attr, dnp->dn_pred->dn_attr));

		if (!FUNC5(dnp->dn_pred)) {
			FUNC9(D_PRED_SCALAR,
			    "predicate result must be of scalar type\n");
		}

		FUNC10(NULL);
	}

	if (tries != 0) {
		FUNC10("action list");

		FUNC3(dnp,
		    FUNC6(&dnp->dn_acts, idflags));

		FUNC10(NULL);
	}

	return (dnp);
}