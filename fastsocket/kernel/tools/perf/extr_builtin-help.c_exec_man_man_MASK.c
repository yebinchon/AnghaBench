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
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const char *path, const char *page)
{
	if (!path)
		path = "man";
	FUNC0(path, "man", page, NULL);
	FUNC2("failed to exec '%s': %s", path, FUNC1(errno));
}