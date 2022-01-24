#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int dtrace_optval_t ;
struct TYPE_4__ {int* dt_options; } ;
typedef  TYPE_1__ dtrace_hdl_t ;

/* Variables and functions */
 int DTRACEOPT_UNSET ; 
 int /*<<< orphan*/  EDT_BADOPTVAL ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (char*,char const*) ; 
 int FUNC2 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
	char *end;
	dtrace_optval_t val = 0;
	int i;

	const struct {
		char *positive;
		char *negative;
	} couples[] = {
		{ "yes",	"no" },
		{ "enable",	"disable" },
		{ "enabled",	"disabled" },
		{ "true",	"false" },
		{ "on",		"off" },
		{ "set",	"unset" },
		{ NULL }
	};

	if (arg != NULL) {
		if (arg[0] == '\0') {
			val = DTRACEOPT_UNSET;
			goto out;
		}

		for (i = 0; couples[i].positive != NULL; i++) {
			if (FUNC1(couples[i].positive, arg) == 0) {
				val = 1;
				goto out;
			}

			if (FUNC1(couples[i].negative, arg) == 0) {
				val = DTRACEOPT_UNSET;
				goto out;
			}
		}

		errno = 0;
		val = FUNC2(arg, &end, 0);

		if (*end != '\0' || errno != 0 || val < 0)
			return (FUNC0(dtp, EDT_BADOPTVAL));
	}

out:
	dtp->dt_options[option] = val;
	return (0);
}