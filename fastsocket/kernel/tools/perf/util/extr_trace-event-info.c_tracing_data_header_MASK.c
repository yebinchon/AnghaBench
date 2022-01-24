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
 char* VERSION ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char page_size ; 
 int /*<<< orphan*/  FUNC2 (char,char) ; 
 int FUNC3 (char*) ; 
 char FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static void FUNC6(void)
{
	char buf[20];

	/* just guessing this is someone's birthday.. ;) */
	buf[0] = 23;
	buf[1] = 8;
	buf[2] = 68;
	FUNC1(buf + 3, "tracing", 7);

	FUNC5(buf, 10);

	FUNC5(VERSION, FUNC3(VERSION) + 1);

	/* save endian */
	if (FUNC0())
		buf[0] = 1;
	else
		buf[0] = 0;

	FUNC2(buf[0], buf[0]);

	FUNC5(buf, 1);

	/* save size of long */
	buf[0] = sizeof(long);
	FUNC5(buf, 1);

	/* save page_size */
	page_size = FUNC4(_SC_PAGESIZE);
	FUNC5(&page_size, 4);
}