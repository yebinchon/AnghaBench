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
 char FUNC0 (unsigned int) ; 

__attribute__((used)) static int FUNC1(char *s, unsigned int i)
{
	char *bak = s;
	*s = FUNC0((i >> 12) & 0xf);
	if (s != bak || *s != '0')
		++s;
	*s = FUNC0((i >> 8) & 0xf);
	if (s != bak || *s != '0')
		++s;
	*s = FUNC0((i >> 4) & 0xf);
	if (s != bak || *s != '0')
		++s;
	*s = FUNC0(i & 0xf);
	return s - bak + 1;
}