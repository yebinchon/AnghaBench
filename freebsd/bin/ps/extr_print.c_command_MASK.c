#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VARENT ;
struct TYPE_6__ {char* prefix; } ;
struct TYPE_7__ {char* ki_args; char* ki_env; TYPE_2__ ki_d; TYPE_1__* ki_p; } ;
struct TYPE_5__ {int ki_numthreads; char* ki_tdname; char* ki_moretdname; int /*<<< orphan*/  ki_comm; } ;
typedef  TYPE_3__ KINFO ;

/* Variables and functions */
 size_t COMMAND_WIDTH ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int VIS_NL ; 
 int VIS_NOSLASH ; 
 int VIS_TAB ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,char*,char*,char*,char*,...) ; 
 scalar_t__ cflag ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  next_ve ; 
 scalar_t__ showthreads ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 

char *
FUNC8(KINFO *k, VARENT *ve)
{
	char *vis_args, *vis_env, *str;

	if (cflag) {
		/* If it is the last field, then don't pad */
		if (FUNC0(ve, next_ve) == NULL) {
			FUNC1(&str, "%s%s%s%s%s",
			    k->ki_d.prefix ? k->ki_d.prefix : "",
			    k->ki_p->ki_comm,
			    (showthreads && k->ki_p->ki_numthreads > 1) ? "/" : "",
			    (showthreads && k->ki_p->ki_numthreads > 1) ? k->ki_p->ki_tdname : "",
			    (showthreads && k->ki_p->ki_numthreads > 1) ? k->ki_p->ki_moretdname : "");
		} else
			str = FUNC4(k->ki_p->ki_comm);

		return (str);
	}
	if ((vis_args = FUNC3(FUNC5(k->ki_args) * 4 + 1)) == NULL)
		FUNC7(1, "malloc failed");
	FUNC6(vis_args, k->ki_args, VIS_TAB | VIS_NL | VIS_NOSLASH);

	if (FUNC0(ve, next_ve) == NULL) {
		/* last field */

		if (k->ki_env) {
			if ((vis_env = FUNC3(FUNC5(k->ki_env) * 4 + 1))
			    == NULL)
				FUNC7(1, "malloc failed");
			FUNC6(vis_env, k->ki_env,
			    VIS_TAB | VIS_NL | VIS_NOSLASH);
		} else
			vis_env = NULL;

		FUNC1(&str, "%s%s%s%s",
		    k->ki_d.prefix ? k->ki_d.prefix : "",
		    vis_env ? vis_env : "",
		    vis_env ? " " : "",
		    vis_args);

		if (vis_env != NULL)
			FUNC2(vis_env);
		FUNC2(vis_args);
	} else {
		/* ki_d.prefix & ki_env aren't shown for interim fields */
		str = vis_args;

		if (FUNC5(str) > COMMAND_WIDTH)
			str[COMMAND_WIDTH] = '\0';
	}

	return (str);
}