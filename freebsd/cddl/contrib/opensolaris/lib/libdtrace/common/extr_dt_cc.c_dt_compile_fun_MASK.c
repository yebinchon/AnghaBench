#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_stmtdesc_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_28__ {TYPE_4__* dn_expr; } ;
typedef  TYPE_2__ dt_node_t ;
struct TYPE_29__ {TYPE_1__* dn_ident; } ;
struct TYPE_27__ {int di_id; int /*<<< orphan*/  di_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DTRACEACT_FREOPEN ; 
 int /*<<< orphan*/  DTRACEACT_MOD ; 
 int /*<<< orphan*/  DTRACEACT_PRINTF ; 
 int /*<<< orphan*/  DTRACEACT_SYM ; 
 int /*<<< orphan*/  DTRACEACT_SYSTEM ; 
 int /*<<< orphan*/  DTRACEACT_UADDR ; 
 int /*<<< orphan*/  DTRACEACT_UMOD ; 
 int /*<<< orphan*/  DTRACEACT_USYM ; 
#define  DT_ACT_BREAKPOINT 158 
#define  DT_ACT_CHILL 157 
#define  DT_ACT_CLEAR 156 
#define  DT_ACT_COMMIT 155 
#define  DT_ACT_DENORMALIZE 154 
#define  DT_ACT_DISCARD 153 
#define  DT_ACT_EXIT 152 
#define  DT_ACT_FREOPEN 151 
#define  DT_ACT_FTRUNCATE 150 
#define  DT_ACT_JSTACK 149 
#define  DT_ACT_MOD 148 
#define  DT_ACT_NORMALIZE 147 
#define  DT_ACT_PANIC 146 
#define  DT_ACT_PRINT 145 
#define  DT_ACT_PRINTA 144 
#define  DT_ACT_PRINTF 143 
#define  DT_ACT_PRINTM 142 
#define  DT_ACT_RAISE 141 
#define  DT_ACT_SETOPT 140 
#define  DT_ACT_SPECULATE 139 
#define  DT_ACT_STACK 138 
#define  DT_ACT_STOP 137 
#define  DT_ACT_SYM 136 
#define  DT_ACT_SYSTEM 135 
#define  DT_ACT_TRACE 134 
#define  DT_ACT_TRACEMEM 133 
#define  DT_ACT_TRUNC 132 
#define  DT_ACT_UADDR 131 
#define  DT_ACT_UMOD 130 
#define  DT_ACT_USTACK 129 
#define  DT_ACT_USYM 128 
 int /*<<< orphan*/  D_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC23(dtrace_hdl_t *dtp, dt_node_t *dnp, dtrace_stmtdesc_t *sdp)
{
	switch (dnp->dn_expr->dn_ident->di_id) {
	case DT_ACT_BREAKPOINT:
		FUNC1(dtp, dnp->dn_expr, sdp);
		break;
	case DT_ACT_CHILL:
		FUNC2(dtp, dnp->dn_expr, sdp);
		break;
	case DT_ACT_CLEAR:
		FUNC3(dtp, dnp->dn_expr, sdp);
		break;
	case DT_ACT_COMMIT:
		FUNC4(dtp, dnp->dn_expr, sdp);
		break;
	case DT_ACT_DENORMALIZE:
		FUNC8(dtp, dnp->dn_expr, sdp);
		break;
	case DT_ACT_DISCARD:
		FUNC5(dtp, dnp->dn_expr, sdp);
		break;
	case DT_ACT_EXIT:
		FUNC6(dtp, dnp->dn_expr, sdp);
		break;
	case DT_ACT_FREOPEN:
		FUNC11(dtp, dnp->dn_expr, sdp, DTRACEACT_FREOPEN);
		break;
	case DT_ACT_FTRUNCATE:
		FUNC7(dtp, dnp->dn_expr, sdp);
		break;
	case DT_ACT_MOD:
		FUNC18(dtp, dnp->dn_expr, sdp, DTRACEACT_MOD);
		break;
	case DT_ACT_NORMALIZE:
		FUNC8(dtp, dnp->dn_expr, sdp);
		break;
	case DT_ACT_PANIC:
		FUNC9(dtp, dnp->dn_expr, sdp);
		break;
	case DT_ACT_PRINT:
		FUNC19(dtp, dnp->dn_expr, sdp);
		break;
	case DT_ACT_PRINTA:
		FUNC10(dtp, dnp->dn_expr, sdp);
		break;
	case DT_ACT_PRINTF:
		FUNC11(dtp, dnp->dn_expr, sdp, DTRACEACT_PRINTF);
		break;
	case DT_ACT_PRINTM:
		FUNC12(dtp, dnp->dn_expr, sdp);
		break;
	case DT_ACT_RAISE:
		FUNC13(dtp, dnp->dn_expr, sdp);
		break;
	case DT_ACT_SETOPT:
		FUNC14(dtp, dnp->dn_expr, sdp);
		break;
	case DT_ACT_SPECULATE:
		FUNC15(dtp, dnp->dn_expr, sdp);
		break;
	case DT_ACT_STACK:
		FUNC16(dtp, dnp->dn_expr, sdp);
		break;
	case DT_ACT_STOP:
		FUNC17(dtp, dnp->dn_expr, sdp);
		break;
	case DT_ACT_SYM:
		FUNC18(dtp, dnp->dn_expr, sdp, DTRACEACT_SYM);
		break;
	case DT_ACT_SYSTEM:
		FUNC11(dtp, dnp->dn_expr, sdp, DTRACEACT_SYSTEM);
		break;
	case DT_ACT_TRACE:
		FUNC19(dtp, dnp->dn_expr, sdp);
		break;
	case DT_ACT_TRACEMEM:
		FUNC20(dtp, dnp->dn_expr, sdp);
		break;
	case DT_ACT_TRUNC:
		FUNC21(dtp, dnp->dn_expr, sdp);
		break;
	case DT_ACT_UADDR:
		FUNC18(dtp, dnp->dn_expr, sdp, DTRACEACT_UADDR);
		break;
	case DT_ACT_UMOD:
		FUNC18(dtp, dnp->dn_expr, sdp, DTRACEACT_UMOD);
		break;
	case DT_ACT_USYM:
		FUNC18(dtp, dnp->dn_expr, sdp, DTRACEACT_USYM);
		break;
	case DT_ACT_USTACK:
	case DT_ACT_JSTACK:
		FUNC22(dtp, dnp->dn_expr, sdp);
		break;
	default:
		FUNC0(dnp->dn_expr, D_UNKNOWN, "tracing function %s( ) is "
		    "not yet supported\n", dnp->dn_expr->dn_ident->di_name);
	}
}