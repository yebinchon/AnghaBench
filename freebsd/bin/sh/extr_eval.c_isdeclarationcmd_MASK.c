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
struct narg {int /*<<< orphan*/  text; TYPE_1__* next; } ;
struct TYPE_2__ {struct narg narg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC2(struct narg *arg)
{
	int have_command = 0;

	if (arg == NULL)
		return (0);
	while (FUNC1(arg->text, "command")) {
		have_command = 1;
		arg = &arg->next->narg;
		if (arg == NULL)
			return (0);
		/*
		 * To also allow "command -p" and "command --" as part of
		 * a declaration command, add code here.
		 * We do not do this, as ksh does not do it either and it
		 * is not required by POSIX.
		 */
	}
	return (FUNC1(arg->text, "export") ||
	    FUNC1(arg->text, "readonly") ||
	    (FUNC1(arg->text, "local") &&
		(have_command || !FUNC0("local"))));
}