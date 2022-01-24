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
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

char *
FUNC1(char *s)
{
	static char *file = NULL;
	static int filesz = 0;

	int i = 0;

	FUNC0(file, filesz, PATH_MAX, NULL);
	while (i < filesz - 1	/* Worry about a possible trailing escape */
	       && (file[i++] = (*s == '\\') ? *++s : *s))
		s++;
	return file;
}