#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_2__ {char* buf; } ;
struct magic_set {int event_flags; TYPE_1__ o; } ;

/* Variables and functions */
 int EVENT_HAD_ERR ; 
 int FUNC0 (char**,char*,char*,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char**,char const*,int /*<<< orphan*/ ) ; 

int
FUNC5(struct magic_set *ms, const char *fmt, va_list ap)
{
	int len;
	char *buf, *newstr;

	if (ms->event_flags & EVENT_HAD_ERR)
		return 0;
	len = FUNC4(&buf, fmt, ap);
	if (len < 0)
		goto out;

	if (ms->o.buf != NULL) {
		len = FUNC0(&newstr, "%s%s", ms->o.buf, buf);
		FUNC2(buf);
		if (len < 0)
			goto out;
		FUNC2(ms->o.buf);
		buf = newstr;
	}
	ms->o.buf = buf;
	return 0;
out:
	FUNC1(stderr, "vasprintf failed (%s)", FUNC3(errno));
	return -1;
}