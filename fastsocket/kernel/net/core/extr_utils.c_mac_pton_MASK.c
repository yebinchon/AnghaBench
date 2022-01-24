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
typedef  int u8 ;

/* Variables and functions */
 int ETH_ALEN ; 
 int FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const) ; 
 int FUNC2 (char const*) ; 

int FUNC3(const char *s, u8 *mac)
{
	int i;

	/* XX:XX:XX:XX:XX:XX */
	if (FUNC2(s) < 3 * ETH_ALEN - 1)
		return 0;

	/* Don't dirty result unless string is valid MAC. */
	for (i = 0; i < ETH_ALEN; i++) {
		if (!FUNC1("0123456789abcdefABCDEF", s[i * 3]))
			return 0;
		if (!FUNC1("0123456789abcdefABCDEF", s[i * 3 + 1]))
			return 0;
		if (i != ETH_ALEN - 1 && s[i * 3 + 2] != ':')
			return 0;
	}
	for (i = 0; i < ETH_ALEN; i++) {
		mac[i] = (FUNC0(s[i * 3]) << 4) | FUNC0(s[i * 3 + 1]);
	}
	return 1;
}