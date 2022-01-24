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
 char* FUNC0 (char const*,char) ; 

__attribute__((used)) static char *FUNC1(const char *nfspath, const char *end)
{
	char *p;

	if (*nfspath == '[') {
		/* parse [] escaped IPv6 addrs */
		p = FUNC0(nfspath, ']');
		if (p != NULL && ++p < end && *p == ':')
			return p + 1;
	} else {
		/* otherwise split on first colon */
		p = FUNC0(nfspath, ':');
		if (p != NULL && p < end)
			return p + 1;
	}
	return NULL;
}