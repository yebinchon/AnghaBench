#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* din_argv; int /*<<< orphan*/ * din_hash; int /*<<< orphan*/  din_list; } ;
typedef  TYPE_1__ dt_idnode_t ;
struct TYPE_8__ {scalar_t__ di_kind; TYPE_1__* di_iarg; } ;
typedef  TYPE_2__ dt_ident_t ;

/* Variables and functions */
 scalar_t__ DT_IDENT_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(dt_ident_t *idp)
{
	dt_idnode_t *inp = idp->di_iarg;

	if (inp != NULL) {
		FUNC3(&inp->din_list);

		if (inp->din_hash != NULL)
			FUNC2(inp->din_hash);

		FUNC4(inp->din_argv);
		FUNC4(inp);
	}

	if (idp->di_kind == DT_IDENT_ARRAY)
		FUNC1(idp);
	else
		FUNC0(idp);
}