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
 int BR_EC_secp256r1 ; 
 int BR_EC_secp384r1 ; 
 int BR_EC_secp521r1 ; 
 scalar_t__ FUNC0 (char*,char*) ; 

__attribute__((used)) static int
FUNC1(const char *name)
{
	char tmp[20];
	size_t u, v;

	for (u = 0, v = 0; name[u]; u ++) {
		int c;

		c = name[u];
		if ((c >= '0' && c <= '9')
			|| (c >= 'A' && c <= 'Z')
			|| (c >= 'a' && c <= 'z'))
		{
			tmp[v ++] = c;
			if (v == sizeof tmp) {
				return -1;
			}
		}
	}
	tmp[v] = 0;
	if (FUNC0(tmp, "p256") || FUNC0(tmp, "secp256r1")) {
		return BR_EC_secp256r1;
	} else if (FUNC0(tmp, "p384") || FUNC0(tmp, "secp384r1")) {
		return BR_EC_secp384r1;
	} else if (FUNC0(tmp, "p521") || FUNC0(tmp, "secp521r1")) {
		return BR_EC_secp521r1;
	} else {
		return -1;
	}
}