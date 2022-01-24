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
struct omfs_sb_info {int s_uid; int s_gid; int s_fmask; int s_dmask; } ;

/* Variables and functions */
 int MAX_OPT_ARGS ; 
#define  Opt_dmask 132 
#define  Opt_fmask 131 
#define  Opt_gid 130 
#define  Opt_uid 129 
#define  Opt_umask 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 

__attribute__((used)) static int FUNC4(char *options, struct omfs_sb_info *sbi)
{
	char *p;
	substring_t args[MAX_OPT_ARGS];
	int option;

	if (!options)
		return 1;

	while ((p = FUNC3(&options, ",")) != NULL) {
		int token;
		if (!*p)
			continue;

		token = FUNC2(p, tokens, args);
		switch (token) {
		case Opt_uid:
			if (FUNC0(&args[0], &option))
				return 0;
			sbi->s_uid = option;
			break;
		case Opt_gid:
			if (FUNC0(&args[0], &option))
				return 0;
			sbi->s_gid = option;
			break;
		case Opt_umask:
			if (FUNC1(&args[0], &option))
				return 0;
			sbi->s_fmask = sbi->s_dmask = option;
			break;
		case Opt_dmask:
			if (FUNC1(&args[0], &option))
				return 0;
			sbi->s_dmask = option;
			break;
		case Opt_fmask:
			if (FUNC1(&args[0], &option))
				return 0;
			sbi->s_fmask = option;
			break;
		default:
			return 0;
		}
	}
	return 1;
}