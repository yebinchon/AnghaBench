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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char* FUNC2 (char*,int) ; 

__attribute__((used)) static char *
FUNC3(char *s1, char *s2, int s2strip)
{
	int savelen = FUNC0(s2) - s2strip;
	int newlen = (s1 ? FUNC0(s1) : 0) + savelen + 1;
	char *out;

	out = FUNC2(s1, newlen);
	if (s1)
		FUNC1(out + FUNC0(out), s2, savelen);
	else
		FUNC1(out, s2, savelen);

	out[newlen - 1] = '\0';

	return (out);
}