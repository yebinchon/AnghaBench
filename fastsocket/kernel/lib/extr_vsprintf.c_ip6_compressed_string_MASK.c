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
typedef  int /*<<< orphan*/  zerolength ;
typedef  int u8 ;
typedef  int u16 ;
struct in6_addr {scalar_t__* s6_addr16; int /*<<< orphan*/ * s6_addr; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (struct in6_addr*) ; 
 scalar_t__ FUNC3 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC4 (struct in6_addr*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (scalar_t__) ; 
 char* FUNC7 (char*,int) ; 

__attribute__((used)) static char *FUNC8(char *p, const char *addr)
{
	int i;
	int j;
	int range;
	unsigned char zerolength[8];
	int longest = 1;
	int colonpos = -1;
	u16 word;
	u8 hi;
	u8 lo;
	bool needcolon = false;
	bool useIPv4;
	struct in6_addr in6;

	FUNC4(&in6, addr, sizeof(struct in6_addr));

	useIPv4 = FUNC3(&in6) || FUNC2(&in6);

	FUNC5(zerolength, 0, sizeof(zerolength));

	if (useIPv4)
		range = 6;
	else
		range = 8;

	/* find position of longest 0 run */
	for (i = 0; i < range; i++) {
		for (j = i; j < range; j++) {
			if (in6.s6_addr16[j] != 0)
				break;
			zerolength[i]++;
		}
	}
	for (i = 0; i < range; i++) {
		if (zerolength[i] > longest) {
			longest = zerolength[i];
			colonpos = i;
		}
	}

	/* emit address */
	for (i = 0; i < range; i++) {
		if (i == colonpos) {
			if (needcolon || i == 0)
				*p++ = ':';
			*p++ = ':';
			needcolon = false;
			i += longest - 1;
			continue;
		}
		if (needcolon) {
			*p++ = ':';
			needcolon = false;
		}
		/* hex u16 without leading 0s */
		word = FUNC6(in6.s6_addr16[i]);
		hi = word >> 8;
		lo = word & 0xff;
		if (hi) {
			if (hi > 0x0f)
				p = FUNC7(p, hi);
			else
				*p++ = FUNC0(hi);
		}
		if (hi || lo > 0x0f)
			p = FUNC7(p, lo);
		else
			*p++ = FUNC0(lo);
		needcolon = true;
	}

	if (useIPv4) {
		if (needcolon)
			*p++ = ':';
		p = FUNC1(p, &in6.s6_addr[12], false);
	}

	*p = '\0';
	return p;
}