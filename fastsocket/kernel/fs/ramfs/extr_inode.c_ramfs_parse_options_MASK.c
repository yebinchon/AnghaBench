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
typedef  int /*<<< orphan*/  substring_t ;
struct ramfs_mount_opts {int mode; } ;

/* Variables and functions */
 int EINVAL ; 
 int MAX_OPT_ARGS ; 
#define  Opt_mode 128 
 int RAMFS_DEFAULT_MODE ; 
 int S_IALLUGO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 

__attribute__((used)) static int FUNC3(char *data, struct ramfs_mount_opts *opts)
{
	substring_t args[MAX_OPT_ARGS];
	int option;
	int token;
	char *p;

	opts->mode = RAMFS_DEFAULT_MODE;

	while ((p = FUNC2(&data, ",")) != NULL) {
		if (!*p)
			continue;

		token = FUNC1(p, tokens, args);
		switch (token) {
		case Opt_mode:
			if (FUNC0(&args[0], &option))
				return -EINVAL;
			opts->mode = option & S_IALLUGO;
			break;
		/*
		 * We might like to report bad mount options here;
		 * but traditionally ramfs has ignored all mount options,
		 * and as it is used as a !CONFIG_SHMEM simple substitute
		 * for tmpfs, better continue to ignore other mount options.
		 */
		}
	}

	return 0;
}