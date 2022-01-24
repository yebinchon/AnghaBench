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
 int EINVAL ; 
 int ERANGE ; 
 unsigned int KSTRTOX_OVERFLOW ; 
 unsigned int FUNC0 (char const*,unsigned int,unsigned long long*) ; 
 char* FUNC1 (char const*,unsigned int*) ; 

__attribute__((used)) static int FUNC2(const char *s, unsigned int base, unsigned long long *res)
{
	unsigned long long _res;
	unsigned int rv;

	s = FUNC1(s, &base);
	rv = FUNC0(s, base, &_res);
	if (rv & KSTRTOX_OVERFLOW)
		return -ERANGE;
	rv &= ~KSTRTOX_OVERFLOW;
	if (rv == 0)
		return -EINVAL;
	s += rv;
	if (*s == '\n')
		s++;
	if (*s)
		return -EINVAL;
	*res = _res;
	return 0;
}