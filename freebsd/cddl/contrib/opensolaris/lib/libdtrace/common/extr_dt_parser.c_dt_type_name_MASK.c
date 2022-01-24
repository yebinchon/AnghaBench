#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
typedef  scalar_t__ ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;
struct TYPE_2__ {int /*<<< orphan*/ * pcb_hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,scalar_t__,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,size_t,char*) ; 
 TYPE_1__* yypcb ; 

const char *
FUNC8(ctf_file_t *ctfp, ctf_id_t type, char *buf, size_t len)
{
	dtrace_hdl_t *dtp = yypcb->pcb_hdl;

	if (ctfp == FUNC2(dtp) && type == FUNC3(dtp))
		(void) FUNC7(buf, len, "function pointer");
	else if (ctfp == FUNC4(dtp) && type == FUNC5(dtp))
		(void) FUNC7(buf, len, "function");
	else if (ctfp == FUNC0(dtp) && type == FUNC1(dtp))
		(void) FUNC7(buf, len, "dynamic variable");
	else if (ctfp == NULL)
		(void) FUNC7(buf, len, "<none>");
	else if (FUNC6(ctfp, type, buf, len) == NULL)
		(void) FUNC7(buf, len, "unknown");

	return (buf);
}