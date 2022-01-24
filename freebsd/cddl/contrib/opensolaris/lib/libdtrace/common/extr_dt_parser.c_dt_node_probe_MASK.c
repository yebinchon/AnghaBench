#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  dt_gen; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
struct TYPE_14__ {int /*<<< orphan*/ * dn_ident; } ;
typedef  TYPE_2__ dt_node_t ;
struct TYPE_15__ {int /*<<< orphan*/  pcb_jmpbuf; TYPE_1__* pcb_hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  DTRACE_IDNONE ; 
 int DTRACE_NAMELEN ; 
 int DT_DP_ANON ; 
 int DT_DP_VOID ; 
 int /*<<< orphan*/  DT_IDENT_PROBE ; 
 int /*<<< orphan*/  DT_IDFLG_ORPHAN ; 
 int /*<<< orphan*/  DT_NODE_PROBE ; 
 int /*<<< orphan*/  D_PROV_BADNAME ; 
 int /*<<< orphan*/  D_PROV_PRARGLEN ; 
 int /*<<< orphan*/  EDT_NOMEM ; 
 int UINT8_MAX ; 
 int /*<<< orphan*/  _dtrace_defattr ; 
 char* FUNC0 (size_t) ; 
 int FUNC1 (TYPE_2__*,TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dt_idops_probe ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int,TYPE_2__*,int,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,size_t,char*,char*) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_3__* yypcb ; 

dt_node_t *
FUNC12(char *s, int protoc, dt_node_t *nargs, dt_node_t *xargs)
{
	dtrace_hdl_t *dtp = yypcb->pcb_hdl;
	int nargc, xargc;
	dt_node_t *dnp;

	size_t len = FUNC10(s) + 3; /* +3 for :: and \0 */
	char *name = FUNC0(len);

	(void) FUNC7(name, len, "::%s", s);
	(void) FUNC9(name);
	FUNC5(s);

	if (FUNC8(name, '`') != NULL) {
		FUNC11(D_PROV_BADNAME, "probe name may not "
		    "contain scoping operator: %s\n", name);
	}

	if (FUNC10(name) - 2 >= DTRACE_NAMELEN) {
		FUNC11(D_PROV_BADNAME, "probe name may not exceed %d "
		    "characters: %s\n", DTRACE_NAMELEN - 1, name);
	}

	dnp = FUNC3(DT_NODE_PROBE);

	dnp->dn_ident = FUNC2(name, DT_IDENT_PROBE,
	    DT_IDFLG_ORPHAN, DTRACE_IDNONE, _dtrace_defattr, 0,
	    &dt_idops_probe, NULL, dtp->dt_gen);

	nargc = FUNC1(nargs, nargs,
	    "probe input", DT_DP_VOID | DT_DP_ANON);

	xargc = FUNC1(xargs, nargs,
	    "probe output", DT_DP_VOID);

	if (nargc > UINT8_MAX) {
		FUNC11(D_PROV_PRARGLEN, "probe %s input prototype exceeds %u "
		    "parameters: %d params used\n", name, UINT8_MAX, nargc);
	}

	if (xargc > UINT8_MAX) {
		FUNC11(D_PROV_PRARGLEN, "probe %s output prototype exceeds %u "
		    "parameters: %d params used\n", name, UINT8_MAX, xargc);
	}

	if (dnp->dn_ident == NULL || FUNC4(dtp,
	    dnp->dn_ident, protoc, nargs, nargc, xargs, xargc) == NULL)
		FUNC6(yypcb->pcb_jmpbuf, EDT_NOMEM);

	return (dnp);
}