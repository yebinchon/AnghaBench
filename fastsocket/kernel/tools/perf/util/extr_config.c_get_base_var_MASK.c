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
 int MAXNAME ; 
 scalar_t__ config_file_eof ; 
 int FUNC0 (char*,int,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 char FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(char *name)
{
	int baselen = 0;

	for (;;) {
		int c = FUNC1();
		if (config_file_eof)
			return -1;
		if (c == ']')
			return baselen;
		if (FUNC3(c))
			return FUNC0(name, baselen, c);
		if (!FUNC2(c) && c != '.')
			return -1;
		if (baselen > MAXNAME / 2)
			return -1;
		name[baselen++] = FUNC4(c);
	}
}