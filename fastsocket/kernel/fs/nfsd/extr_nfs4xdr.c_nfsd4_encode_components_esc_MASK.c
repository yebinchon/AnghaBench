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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  nfserr_resource ; 

__attribute__((used)) static __be32 FUNC4(char sep, char *components,
				   __be32 **pp, int *buflen,
				   char esc_enter, char esc_exit)
{
	__be32 *p = *pp;
	__be32 *countp = p;
	int strlen, count=0;
	char *str, *end, *next;

	FUNC3("nfsd4_encode_components(%s)\n", components);
	if ((*buflen -= 4) < 0)
		return nfserr_resource;
	FUNC0(0); /* We will fill this in with @count later */
	end = str = components;
	while (*end) {
		bool found_esc = false;

		/* try to parse as esc_start, ..., esc_end, sep */
		if (*str == esc_enter) {
			for (; *end && (*end != esc_exit); end++)
				/* find esc_exit or end of string */;
			next = end + 1;
			if (*end && (!*next || *next == sep)) {
				str++;
				found_esc = true;
			}
		}

		if (!found_esc)
			for (; *end && (*end != sep); end++)
				/* find sep or end of string */;

		strlen = end - str;
		if (strlen) {
			if ((*buflen -= ((FUNC2(strlen) << 2) + 4)) < 0)
				return nfserr_resource;
			FUNC0(strlen);
			FUNC1(str, strlen);
			count++;
		}
		else
			end++;
		str = end;
	}
	*pp = p;
	p = countp;
	FUNC0(count);
	return 0;
}