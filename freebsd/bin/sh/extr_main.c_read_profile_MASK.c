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
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*) ; 
 int FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void
FUNC5(const char *name)
{
	int fd;
	const char *expandedname;

	expandedname = FUNC1(name);
	if (expandedname == NULL)
		return;
	INTOFF;
	if ((fd = FUNC2(expandedname, O_RDONLY | O_CLOEXEC)) >= 0)
		FUNC4(fd, 1);
	INTON;
	if (fd < 0)
		return;
	FUNC0(0);
	FUNC3();
}