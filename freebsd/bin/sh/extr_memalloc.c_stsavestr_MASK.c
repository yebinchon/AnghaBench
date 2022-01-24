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
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 char* FUNC1 (size_t) ; 
 size_t FUNC2 (char const*) ; 

char *
FUNC3(const char *s)
{
	char *p;
	size_t len;

	len = FUNC2(s);
	p = FUNC1(len + 1);
	FUNC0(p, s, len + 1);
	return p;
}