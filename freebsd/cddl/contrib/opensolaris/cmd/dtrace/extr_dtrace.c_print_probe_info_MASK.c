#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  dtat_class; int /*<<< orphan*/  dtat_data; int /*<<< orphan*/  dtat_name; } ;
struct TYPE_6__ {int /*<<< orphan*/  dtat_class; int /*<<< orphan*/  dtat_data; int /*<<< orphan*/  dtat_name; } ;
struct TYPE_9__ {int dtp_argc; TYPE_3__* dtp_argv; TYPE_2__ dtp_arga; TYPE_1__ dtp_attr; } ;
typedef  TYPE_4__ dtrace_probeinfo_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_8__ {int dtt_flags; int /*<<< orphan*/  dtt_type; int /*<<< orphan*/  dtt_ctfp; } ;

/* Variables and functions */
 int BUFSIZ ; 
 int DTT_FL_USER ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC5(const dtrace_probeinfo_t *p)
{
	char buf[BUFSIZ];
	char *user;
	int i;

	FUNC3("\n\tProbe Description Attributes\n");

	FUNC3("\t\tIdentifier Names: %s\n",
	    FUNC2(p->dtp_attr.dtat_name));
	FUNC3("\t\tData Semantics:   %s\n",
	    FUNC2(p->dtp_attr.dtat_data));
	FUNC3("\t\tDependency Class: %s\n",
	    FUNC1(p->dtp_attr.dtat_class));

	FUNC3("\n\tArgument Attributes\n");

	FUNC3("\t\tIdentifier Names: %s\n",
	    FUNC2(p->dtp_arga.dtat_name));
	FUNC3("\t\tData Semantics:   %s\n",
	    FUNC2(p->dtp_arga.dtat_data));
	FUNC3("\t\tDependency Class: %s\n",
	    FUNC1(p->dtp_arga.dtat_class));

	FUNC3("\n\tArgument Types\n");

	for (i = 0; i < p->dtp_argc; i++) {
		if (p->dtp_argv[i].dtt_flags & DTT_FL_USER)
			user = "userland ";
		else
			user = "";
		if (FUNC0(p->dtp_argv[i].dtt_ctfp,
		    p->dtp_argv[i].dtt_type, buf, sizeof (buf)) == NULL)
			(void) FUNC4(buf, "(unknown)", sizeof (buf));
		FUNC3("\t\targs[%d]: %s%s\n", i, user, buf);
	}

	if (p->dtp_argc == 0)
		FUNC3("\t\tNone\n");

	FUNC3("\n");
}