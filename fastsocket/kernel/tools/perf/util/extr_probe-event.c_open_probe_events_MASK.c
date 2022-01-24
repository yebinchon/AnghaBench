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
 int ENOENT ; 
 int /*<<< orphan*/  O_APPEND ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 int PATH_MAX ; 
 char* FUNC0 () ; 
 int FUNC1 (char*,int,char*,char const*,char const*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  probe_event_dry_run ; 

__attribute__((used)) static int FUNC6(const char *trace_file, bool readwrite,
				bool is_kprobe)
{
	char buf[PATH_MAX];
	const char *__debugfs;
	int ret;

	__debugfs = FUNC0();
	if (__debugfs == NULL) {
		FUNC4("Debugfs is not mounted.\n");
		return -ENOENT;
	}

	ret = FUNC1(buf, PATH_MAX, "%s/%s", __debugfs, trace_file);
	if (ret >= 0) {
		FUNC3("Opening %s write=%d\n", buf, readwrite);
		if (readwrite && !probe_event_dry_run)
			ret = FUNC2(buf, O_RDWR, O_APPEND);
		else
			ret = FUNC2(buf, O_RDONLY, 0);

		if (ret < 0)
			FUNC5(buf, is_kprobe);
	}
	return ret;
}