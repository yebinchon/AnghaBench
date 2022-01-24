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
 int /*<<< orphan*/  FUNC0 (char*,int,char*,unsigned char const) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static size_t FUNC2(char *buf, int buflen,
				const unsigned char *addr, int len)
{
	int i;
	char *cp = buf;

	for (i = 0; i < len; i++) {
		cp += FUNC0(cp, buflen - (cp - buf), "%02x", addr[i]);
		if (i == len - 1)
			break;
		cp += FUNC1(cp, ":", buflen - (cp - buf));
	}
	return cp - buf;
}