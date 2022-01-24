#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* dc_arg; char* dc_desc; char* dc_name; int /*<<< orphan*/ * dc_prog; } ;
typedef  TYPE_1__ dtrace_cmd_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  g_argc ; 
 char** g_argv ; 
 int /*<<< orphan*/  g_cflags ; 
 int /*<<< orphan*/  g_dtp ; 

__attribute__((used)) static void
FUNC5(dtrace_cmd_t *dcp)
{
	char *arg0;
	FILE *fp;

	if ((fp = FUNC4(dcp->dc_arg, "r")) == NULL)
		FUNC2("failed to open %s", dcp->dc_arg);

	arg0 = g_argv[0];
	g_argv[0] = dcp->dc_arg;

	if ((dcp->dc_prog = FUNC1(g_dtp, fp,
	    g_cflags, g_argc, g_argv)) == NULL)
		FUNC0("failed to compile script %s", dcp->dc_arg);

	g_argv[0] = arg0;
	(void) FUNC3(fp);

	dcp->dc_desc = "script";
	dcp->dc_name = dcp->dc_arg;
}