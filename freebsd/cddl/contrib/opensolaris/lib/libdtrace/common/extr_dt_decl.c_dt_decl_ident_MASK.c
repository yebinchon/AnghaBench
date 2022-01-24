#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* ds_ident; int /*<<< orphan*/ * ds_decl; } ;
typedef  TYPE_1__ dt_scope_t ;
typedef  int /*<<< orphan*/  dt_decl_t ;
struct TYPE_4__ {TYPE_1__ pcb_dstack; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTF_K_UNKNOWN ; 
 int /*<<< orphan*/  D_DECL_IDENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* yypcb ; 

dt_decl_t *
FUNC4(char *name)
{
	dt_scope_t *dsp = &yypcb->pcb_dstack;
	dt_decl_t *ddp = dsp->ds_decl;

	if (dsp->ds_ident != NULL) {
		FUNC2(name);
		FUNC3(D_DECL_IDENT, "old-style declaration or "
		    "incorrect type specified\n");
	}

	dsp->ds_ident = name;

	if (ddp == NULL)
		ddp = FUNC1(FUNC0(CTF_K_UNKNOWN, NULL));

	return (ddp);
}