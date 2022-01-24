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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int*,int) ; 

__attribute__((used)) static void FUNC5(void)
{
	unsigned int size;
	char *path;
	struct stat st;
	int ret;

	path = FUNC0("printk_formats");
	ret = FUNC3(path, &st);
	if (ret < 0) {
		/* not found */
		size = 0;
		FUNC4(&size, 4);
		goto out;
	}
	FUNC2(path, 4);

out:
	FUNC1(path);
}