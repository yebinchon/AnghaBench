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
struct man_viewer_list {char* name; struct man_viewer_list* next; } ;

/* Variables and functions */
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 char* FUNC2 (char*) ; 
 struct man_viewer_list* man_viewer_list ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(const char *perf_cmd)
{
	struct man_viewer_list *viewer;
	const char *page = FUNC0(perf_cmd);
	const char *fallback = FUNC2("PERF_MAN_VIEWER");

	FUNC4();
	for (viewer = man_viewer_list; viewer; viewer = viewer->next)
		FUNC1(viewer->name, page); /* will return when unable */

	if (fallback)
		FUNC1(fallback, page);
	FUNC1("man", page);

	FUNC3("no man viewer handled the request");
	return -1;
}