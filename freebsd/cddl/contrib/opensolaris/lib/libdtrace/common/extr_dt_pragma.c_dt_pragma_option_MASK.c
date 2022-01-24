#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_4__ {scalar_t__ dn_kind; int /*<<< orphan*/  dn_string; int /*<<< orphan*/ * dn_list; } ;
typedef  TYPE_1__ dt_node_t ;
struct TYPE_5__ {int /*<<< orphan*/ * pcb_hdl; } ;

/* Variables and functions */
 scalar_t__ DT_NODE_IDENT ; 
 int /*<<< orphan*/  D_PRAGMA_MALFORM ; 
 int /*<<< orphan*/  D_PRAGMA_OPTSET ; 
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 TYPE_2__* yypcb ; 

__attribute__((used)) static void
FUNC8(const char *prname, dt_node_t *dnp)
{
	dtrace_hdl_t *dtp = yypcb->pcb_hdl;
	char *opt, *val;

	if (dnp == NULL || dnp->dn_kind != DT_NODE_IDENT) {
		FUNC7(D_PRAGMA_MALFORM,
		    "malformed #pragma %s <option>=<val>\n", prname);
	}

	if (dnp->dn_list != NULL) {
		FUNC7(D_PRAGMA_MALFORM,
		    "superfluous arguments specified for #pragma %s\n", prname);
	}

	opt = FUNC0(FUNC6(dnp->dn_string) + 1);
	(void) FUNC5(opt, dnp->dn_string);

	if ((val = FUNC4(opt, '=')) != NULL)
		*val++ = '\0';

	if (FUNC3(dtp, opt, val) == -1) {
		if (val == NULL) {
			FUNC7(D_PRAGMA_OPTSET,
			    "failed to set option '%s': %s\n", opt,
			    FUNC1(dtp, FUNC2(dtp)));
		} else {
			FUNC7(D_PRAGMA_OPTSET,
			    "failed to set option '%s' to '%s': %s\n",
			    opt, val, FUNC1(dtp, FUNC2(dtp)));
		}
	}
}