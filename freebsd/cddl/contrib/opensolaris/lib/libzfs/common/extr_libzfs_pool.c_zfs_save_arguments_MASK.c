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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

void
FUNC3(int argc, char **argv, char *string, int len)
{
	(void) FUNC2(string, FUNC0(argv[0]), len);
	for (int i = 1; i < argc; i++) {
		(void) FUNC1(string, " ", len);
		(void) FUNC1(string, argv[i], len);
	}
}