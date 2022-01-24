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

/* Variables and functions */
 unsigned int FUNC0 (char const* const*) ; 
 int ENOMEM ; 
 char** FUNC1 (unsigned int,int) ; 
 int FUNC2 (unsigned int,char const**,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const* const) ; 

__attribute__((used)) static int FUNC4(int argc, const char **argv)
{
	const char * const record_args[] = {
	"record", "-a", "-R", "-f", "-c", "1",
	"-e", "kmem:kmalloc",
	"-e", "kmem:kmalloc_node",
	"-e", "kmem:kfree",
	"-e", "kmem:kmem_cache_alloc",
	"-e", "kmem:kmem_cache_alloc_node",
	"-e", "kmem:kmem_cache_free",
	};
	unsigned int rec_argc, i, j;
	const char **rec_argv;

	rec_argc = FUNC0(record_args) + argc - 1;
	rec_argv = FUNC1(rec_argc + 1, sizeof(char *));

	if (rec_argv == NULL)
		return -ENOMEM;

	for (i = 0; i < FUNC0(record_args); i++)
		rec_argv[i] = FUNC3(record_args[i]);

	for (j = 1; j < (unsigned int)argc; j++, i++)
		rec_argv[i] = argv[j];

	return FUNC2(i, rec_argv, NULL);
}