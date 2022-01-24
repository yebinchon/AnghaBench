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
 scalar_t__ EINVAL ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 long FUNC2 (char const*,char**,int) ; 

__attribute__((used)) static int
FUNC3(const char *s)
{
	char *p;
	long r;

	errno = 0;
	r = FUNC2(s, &p, 10);

	if (s == p)
		FUNC0("%s: bad number", s);

	if (errno != 0)
		FUNC0((errno == EINVAL) ? "%s: bad number" :
					  "%s: out of range", s);

	while (FUNC1((unsigned char)*p))
		p++;

	if (*p)
		FUNC0("%s: bad number", s);

	return (int) r;
}