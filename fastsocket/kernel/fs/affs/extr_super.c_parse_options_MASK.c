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
typedef  int uid_t ;
typedef  int /*<<< orphan*/  substring_t ;
typedef  int s32 ;
typedef  int gid_t ;

/* Variables and functions */
 int EINVAL ; 
 int MAX_OPT_ARGS ; 
#define  Opt_bs 139 
#define  Opt_ignore 138 
#define  Opt_mode 137 
#define  Opt_mufs 136 
#define  Opt_prefix 135 
#define  Opt_protect 134 
#define  Opt_reserved 133 
#define  Opt_root 132 
#define  Opt_setgid 131 
#define  Opt_setuid 130 
#define  Opt_verbose 129 
#define  Opt_volume 128 
 unsigned long SF_IMMUTABLE ; 
 unsigned long SF_MUFS ; 
 unsigned long SF_PREFIX ; 
 unsigned long SF_SETGID ; 
 unsigned long SF_SETMODE ; 
 unsigned long SF_SETUID ; 
 unsigned long SF_VERBOSE ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 char* FUNC9 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 

__attribute__((used)) static int
FUNC10(char *options, uid_t *uid, gid_t *gid, int *mode, int *reserved, s32 *root,
		int *blocksize, char **prefix, char *volume, unsigned long *mount_opts)
{
	char *p;
	substring_t args[MAX_OPT_ARGS];

	/* Fill in defaults */

	*uid        = FUNC1();
	*gid        = FUNC0();
	*reserved   = 2;
	*root       = -1;
	*blocksize  = -1;
	volume[0]   = ':';
	volume[1]   = 0;
	*mount_opts = 0;
	if (!options)
		return 1;

	while ((p = FUNC9(&options, ",")) != NULL) {
		int token, n, option;
		if (!*p)
			continue;

		token = FUNC6(p, tokens, args);
		switch (token) {
		case Opt_bs:
			if (FUNC3(&args[0], &n))
				return -EINVAL;
			if (n != 512 && n != 1024 && n != 2048
			    && n != 4096) {
				FUNC7 ("AFFS: Invalid blocksize (512, 1024, 2048, 4096 allowed)\n");
				return 0;
			}
			*blocksize = n;
			break;
		case Opt_mode:
			if (FUNC4(&args[0], &option))
				return 1;
			*mode = option & 0777;
			*mount_opts |= SF_SETMODE;
			break;
		case Opt_mufs:
			*mount_opts |= SF_MUFS;
			break;
		case Opt_prefix:
			/* Free any previous prefix */
			FUNC2(*prefix);
			*prefix = FUNC5(&args[0]);
			if (!*prefix)
				return 0;
			*mount_opts |= SF_PREFIX;
			break;
		case Opt_protect:
			*mount_opts |= SF_IMMUTABLE;
			break;
		case Opt_reserved:
			if (FUNC3(&args[0], reserved))
				return 1;
			break;
		case Opt_root:
			if (FUNC3(&args[0], root))
				return 1;
			break;
		case Opt_setgid:
			if (FUNC3(&args[0], &option))
				return 1;
			*gid = option;
			*mount_opts |= SF_SETGID;
			break;
		case Opt_setuid:
			if (FUNC3(&args[0], &option))
				return -EINVAL;
			*uid = option;
			*mount_opts |= SF_SETUID;
			break;
		case Opt_verbose:
			*mount_opts |= SF_VERBOSE;
			break;
		case Opt_volume: {
			char *vol = FUNC5(&args[0]);
			if (!vol)
				return 0;
			FUNC8(volume, vol, 32);
			FUNC2(vol);
			break;
		}
		case Opt_ignore:
		 	/* Silently ignore the quota options */
			break;
		default:
			FUNC7("AFFS: Unrecognized mount option \"%s\" "
					"or missing value\n", p);
			return 0;
		}
	}
	return 1;
}