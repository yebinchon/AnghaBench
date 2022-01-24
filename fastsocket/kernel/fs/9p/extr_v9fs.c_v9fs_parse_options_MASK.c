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
struct v9fs_session_info {int afid; int debug; int dfltuid; int dfltgid; int nodev; int /*<<< orphan*/  uid; int /*<<< orphan*/  flags; void* cache; int /*<<< orphan*/ * cachetag; int /*<<< orphan*/  aname; int /*<<< orphan*/  uname; } ;

/* Variables and functions */
 void* CACHE_FSCACHE ; 
 void* CACHE_LOOSE ; 
 void* CACHE_NONE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_OPT_ARGS ; 
#define  Opt_access 139 
#define  Opt_afid 138 
#define  Opt_cache 137 
#define  Opt_cache_loose 136 
#define  Opt_cachetag 135 
#define  Opt_debug 134 
#define  Opt_dfltgid 133 
#define  Opt_dfltuid 132 
#define  Opt_fscache 131 
#define  Opt_nodevmap 130 
#define  Opt_remotename 129 
#define  Opt_uname 128 
 int /*<<< orphan*/  P9_DEBUG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  V9FS_ACCESS_ANY ; 
 int /*<<< orphan*/  V9FS_ACCESS_MASK ; 
 int /*<<< orphan*/  V9FS_ACCESS_SINGLE ; 
 int /*<<< orphan*/  V9FS_ACCESS_USER ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int p9_debug_level ; 
 int /*<<< orphan*/  FUNC7 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 char* FUNC9 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 

__attribute__((used)) static int FUNC10(struct v9fs_session_info *v9ses, char *opts)
{
	char *options;
	substring_t args[MAX_OPT_ARGS];
	char *p;
	int option = 0;
	char *s, *e;
	int ret = 0;

	/* setup defaults */
	v9ses->afid = ~0;
	v9ses->debug = 0;
	v9ses->cache = 0;
#ifdef CONFIG_9P_FSCACHE
	v9ses->cachetag = NULL;
#endif

	if (!opts)
		return 0;

	options = FUNC2(opts, GFP_KERNEL);
	if (!options)
		goto fail_option_alloc;

	while ((p = FUNC9(&options, ",")) != NULL) {
		int token;
		if (!*p)
			continue;
		token = FUNC6(p, tokens, args);
		if (token < Opt_uname) {
			int r = FUNC3(&args[0], &option);
			if (r < 0) {
				FUNC0(P9_DEBUG_ERROR,
					"integer field, but no integer?\n");
				ret = r;
				continue;
			}
		}
		switch (token) {
		case Opt_debug:
			v9ses->debug = option;
#ifdef CONFIG_NET_9P_DEBUG
			p9_debug_level = option;
#endif
			break;

		case Opt_dfltuid:
			v9ses->dfltuid = option;
			break;
		case Opt_dfltgid:
			v9ses->dfltgid = option;
			break;
		case Opt_afid:
			v9ses->afid = option;
			break;
		case Opt_uname:
			FUNC5(v9ses->uname, &args[0], PATH_MAX);
			break;
		case Opt_remotename:
			FUNC5(v9ses->aname, &args[0], PATH_MAX);
			break;
		case Opt_nodevmap:
			v9ses->nodev = 1;
			break;
		case Opt_cache_loose:
			v9ses->cache = CACHE_LOOSE;
			break;
		case Opt_fscache:
			v9ses->cache = CACHE_FSCACHE;
			break;
		case Opt_cachetag:
#ifdef CONFIG_9P_FSCACHE
			v9ses->cachetag = match_strdup(&args[0]);
#endif
			break;
		case Opt_cache:
			s = FUNC4(&args[0]);
			if (!s)
				goto fail_option_alloc;

			if (FUNC8(s, "loose") == 0)
				v9ses->cache = CACHE_LOOSE;
			else if (FUNC8(s, "fscache") == 0)
				v9ses->cache = CACHE_FSCACHE;
			else
				v9ses->cache = CACHE_NONE;
			FUNC1(s);
			break;

		case Opt_access:
			s = FUNC4(&args[0]);
			if (!s)
				goto fail_option_alloc;

			v9ses->flags &= ~V9FS_ACCESS_MASK;
			if (FUNC8(s, "user") == 0)
				v9ses->flags |= V9FS_ACCESS_USER;
			else if (FUNC8(s, "any") == 0)
				v9ses->flags |= V9FS_ACCESS_ANY;
			else {
				v9ses->flags |= V9FS_ACCESS_SINGLE;
				v9ses->uid = FUNC7(s, &e, 10);
				if (*e != '\0')
					v9ses->uid = ~0;
			}
			FUNC1(s);
			break;

		default:
			continue;
		}
	}
	FUNC1(options);
	return ret;

fail_option_alloc:
	FUNC0(P9_DEBUG_ERROR,
		   "failed to allocate copy of option argument\n");
	return -ENOMEM;
}