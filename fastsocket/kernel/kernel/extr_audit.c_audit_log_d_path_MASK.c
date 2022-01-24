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
struct path {int dummy; } ;
struct audit_buffer {int /*<<< orphan*/  gfp_mask; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ PATH_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*,char*) ; 
 char* FUNC4 (struct path*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC7(struct audit_buffer *ab, const char *prefix,
		      struct path *path)
{
	char *p, *pathname;

	if (prefix)
		FUNC1(ab, " %s", prefix);

	/* We will allow 11 spaces for ' (deleted)' to be appended */
	pathname = FUNC6(PATH_MAX+11, ab->gfp_mask);
	if (!pathname) {
		FUNC2(ab, "<no_memory>");
		return;
	}
	p = FUNC4(path, pathname, PATH_MAX+11);
	if (FUNC0(p)) { /* Should never happen since we send PATH_MAX */
		/* FIXME: can we save some information here? */
		FUNC2(ab, "<too_long>");
	} else
		FUNC3(ab, p);
	FUNC5(pathname);
}