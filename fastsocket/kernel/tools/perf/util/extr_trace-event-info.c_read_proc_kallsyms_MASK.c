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
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int FUNC1 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,int) ; 

__attribute__((used)) static void FUNC3(void)
{
	unsigned int size;
	const char *path = "/proc/kallsyms";
	struct stat st;
	int ret;

	ret = FUNC1(path, &st);
	if (ret < 0) {
		/* not found */
		size = 0;
		FUNC2(&size, 4);
		return;
	}
	FUNC0(path, 4);
}