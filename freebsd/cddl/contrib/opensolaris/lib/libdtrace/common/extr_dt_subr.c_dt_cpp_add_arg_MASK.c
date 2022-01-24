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
struct TYPE_3__ {int dt_cpp_argc; int dt_cpp_args; char** dt_cpp_argv; } ;
typedef  TYPE_1__ dtrace_hdl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char**,int) ; 
 char** FUNC2 (char**,int) ; 
 char* FUNC3 (char const*) ; 

char *
FUNC4(dtrace_hdl_t *dtp, const char *str)
{
	char *arg;

	if (dtp->dt_cpp_argc == dtp->dt_cpp_args) {
		int olds = dtp->dt_cpp_args;
		int news = olds * 2;
		char **argv = FUNC2(dtp->dt_cpp_argv, sizeof (char *) * news);

		if (argv == NULL)
			return (NULL);

		FUNC1(&argv[olds], sizeof (char *) * olds);
		dtp->dt_cpp_argv = argv;
		dtp->dt_cpp_args = news;
	}

	if ((arg = FUNC3(str)) == NULL)
		return (NULL);

	FUNC0(dtp->dt_cpp_argc < dtp->dt_cpp_args);
	dtp->dt_cpp_argv[dtp->dt_cpp_argc++] = arg;
	return (arg);
}