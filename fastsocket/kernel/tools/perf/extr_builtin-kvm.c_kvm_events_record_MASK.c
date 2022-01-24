#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct perf_kvm_stat {char* file_name; } ;

/* Variables and functions */
 unsigned int FUNC0 (char**) ; 
 int ENOMEM ; 
 char* FUNC1 (char*) ; 
 char** FUNC2 (unsigned int,int) ; 
 int FUNC3 (unsigned int,char const**,int /*<<< orphan*/ *) ; 
 char** record_args ; 

__attribute__((used)) static int
FUNC4(struct perf_kvm_stat *kvm, int argc, const char **argv)
{
	unsigned int rec_argc, i, j;
	const char **rec_argv;

	rec_argc = FUNC0(record_args) + argc + 2;
	rec_argv = FUNC2(rec_argc + 1, sizeof(char *));

	if (rec_argv == NULL)
		return -ENOMEM;

	for (i = 0; i < FUNC0(record_args); i++)
		rec_argv[i] = FUNC1(record_args[i]);

	rec_argv[i++] = FUNC1("-o");
	rec_argv[i++] = FUNC1(kvm->file_name);

	for (j = 1; j < (unsigned int)argc; j++, i++)
		rec_argv[i] = argv[j];

	return FUNC3(i, rec_argv, NULL);
}