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
struct cgroup_subsys {char* name; int /*<<< orphan*/  disabled; } ;
struct cgroup_sb_opts {unsigned long subsys_bits; int none; unsigned long flags; void* name; void* release_agent; } ;

/* Variables and functions */
 int CGROUP_SUBSYS_COUNT ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_CGROUP_ROOT_NAMELEN ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int ROOT_NOPREFIX ; 
 unsigned long cpuset_subsys_id ; 
 scalar_t__ FUNC0 (char) ; 
 void* FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cgroup_sb_opts*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 char* FUNC7 (char**,char*) ; 
 struct cgroup_subsys** subsys ; 
 scalar_t__ FUNC8 (int,unsigned long*) ; 

__attribute__((used)) static int FUNC9(char *data,
				     struct cgroup_sb_opts *opts)
{
	char *token, *o = data ?: "all";
	unsigned long mask = (unsigned long)-1;

#ifdef CONFIG_CPUSETS
	mask = ~(1UL << cpuset_subsys_id);
#endif

	FUNC2(opts, 0, sizeof(*opts));

	while ((token = FUNC7(&o, ",")) != NULL) {
		if (!*token)
			return -EINVAL;
		if (!FUNC4(token, "all")) {
			/* Add all non-disabled subsystems */
			int i;
			opts->subsys_bits = 0;
			for (i = 0; i < CGROUP_SUBSYS_COUNT; i++) {
				struct cgroup_subsys *ss = subsys[i];
				if (!ss->disabled)
					opts->subsys_bits |= 1ul << i;
			}
		} else if (!FUNC4(token, "none")) {
			/* Explicitly have no subsystems */
			opts->none = true;
		} else if (!FUNC4(token, "noprefix")) {
			FUNC3(ROOT_NOPREFIX, &opts->flags);
		} else if (!FUNC6(token, "release_agent=", 14)) {
			/* Specifying two release agents is forbidden */
			if (opts->release_agent)
				return -EINVAL;
			opts->release_agent =
				FUNC1(token + 14, PATH_MAX, GFP_KERNEL);
			if (!opts->release_agent)
				return -ENOMEM;
		} else if (!FUNC6(token, "name=", 5)) {
			int i;
			const char *name = token + 5;
			/* Can't specify an empty name */
			if (!FUNC5(name))
				return -EINVAL;
			/* Must match [\w.-]+ */
			for (i = 0; i < FUNC5(name); i++) {
				char c = name[i];
				if (FUNC0(c))
					continue;
				if ((c == '.') || (c == '-') || (c == '_'))
					continue;
				return -EINVAL;
			}
			/* Specifying two names is forbidden */
			if (opts->name)
				return -EINVAL;
			opts->name = FUNC1(name,
					      MAX_CGROUP_ROOT_NAMELEN,
					      GFP_KERNEL);
			if (!opts->name)
				return -ENOMEM;
		} else {
			struct cgroup_subsys *ss;
			int i;
			for (i = 0; i < CGROUP_SUBSYS_COUNT; i++) {
				ss = subsys[i];
				if (!FUNC4(token, ss->name)) {
					if (!ss->disabled)
						FUNC3(i, &opts->subsys_bits);
					break;
				}
			}
			if (i == CGROUP_SUBSYS_COUNT)
				return -ENOENT;
		}
	}

	/* Consistency checks */

	/*
	 * Option noprefix was introduced just for backward compatibility
	 * with the old cpuset, so we allow noprefix only if mounting just
	 * the cpuset subsystem.
	 */
	if (FUNC8(ROOT_NOPREFIX, &opts->flags) &&
	    (opts->subsys_bits & mask))
		return -EINVAL;


	/* Can't specify "none" and some subsystems */
	if (opts->subsys_bits && opts->none)
		return -EINVAL;

	/*
	 * We either have to specify by name or by subsystems. (So all
	 * empty hierarchies must have a name).
	 */
	if (!opts->subsys_bits && !opts->name)
		return -EINVAL;

	return 0;
}