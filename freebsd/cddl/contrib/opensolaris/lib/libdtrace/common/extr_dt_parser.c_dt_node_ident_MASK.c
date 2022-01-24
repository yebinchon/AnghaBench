#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* dn_string; int /*<<< orphan*/  dn_op; int /*<<< orphan*/  dn_value; } ;
typedef  TYPE_1__ dt_node_t ;
struct TYPE_11__ {TYPE_5__* din_root; } ;
typedef  TYPE_2__ dt_idnode_t ;
struct TYPE_12__ {int di_flags; TYPE_2__* di_iarg; } ;
typedef  TYPE_3__ dt_ident_t ;
struct TYPE_14__ {scalar_t__ dn_kind; int /*<<< orphan*/  dn_value; } ;
struct TYPE_13__ {int /*<<< orphan*/  pcb_globals; int /*<<< orphan*/  pcb_jmpbuf; } ;

/* Variables and functions */
 int DT_IDFLG_INLINE ; 
 scalar_t__ DT_NODE_IDENT ; 
 scalar_t__ DT_NODE_INT ; 
 int /*<<< orphan*/  DT_TOK_AGG ; 
 int /*<<< orphan*/  DT_TOK_IDENT ; 
 int /*<<< orphan*/  DT_TOK_INT ; 
 int /*<<< orphan*/  EDT_NOMEM ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* yypcb ; 

dt_node_t *
FUNC5(char *name)
{
	dt_ident_t *idp;
	dt_node_t *dnp;

	if (name == NULL)
		FUNC4(yypcb->pcb_jmpbuf, EDT_NOMEM);

	/*
	 * If the identifier is an inlined integer constant, then create an INT
	 * node that is a clone of the inline parse tree node and return that
	 * immediately, allowing this inline to be used in parsing contexts
	 * that require constant expressions (e.g. scalar array sizes).
	 */
	if ((idp = FUNC0(&yypcb->pcb_globals, name)) != NULL &&
	    (idp->di_flags & DT_IDFLG_INLINE)) {
		dt_idnode_t *inp = idp->di_iarg;

		if (inp->din_root != NULL &&
		    inp->din_root->dn_kind == DT_NODE_INT) {
			FUNC3(name);

			dnp = FUNC1(DT_NODE_INT);
			dnp->dn_op = DT_TOK_INT;
			dnp->dn_value = inp->din_root->dn_value;
			FUNC2(inp->din_root, dnp);

			return (dnp);
		}
	}

	dnp = FUNC1(DT_NODE_IDENT);
	dnp->dn_op = name[0] == '@' ? DT_TOK_AGG : DT_TOK_IDENT;
	dnp->dn_string = name;

	return (dnp);
}