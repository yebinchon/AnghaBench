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
struct stat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static void FUNC6(void)
{
	char *path;
	struct stat st;

	path = FUNC1("events/header_page");
	if (FUNC4(path, &st) < 0)
		FUNC0("can't read '%s'", path);

	FUNC5("header_page", 12);
	FUNC3(path, 8);
	FUNC2(path);

	path = FUNC1("events/header_event");
	if (FUNC4(path, &st) < 0)
		FUNC0("can't read '%s'", path);

	FUNC5("header_event", 13);
	FUNC3(path, 8);
	FUNC2(path);
}