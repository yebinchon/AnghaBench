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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
#define  AF_INET 131 
#define  AF_INET6 130 
#define  FEQUAL 129 
#define  FSTAR 128 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 

__attribute__((used)) static const char *
FUNC3(char *b, size_t l, int fam, int mask)
{
	char buf[128];

	switch (mask) {
	case FSTAR:
		return "";
	case FEQUAL:
		if (FUNC1(b, "=") == 0)
			return "";
		else {
			FUNC2(b, "/=", l);
			return b;
		}
	default:
		break;
	}

	switch (fam) {
	case AF_INET:
		if (mask == 32)
			return "";
		break;
	case AF_INET6:
		if (mask == 128)
			return "";
		break;
	default:
		break;
	}

	FUNC0(buf, sizeof(buf), "/%d", mask);
	FUNC2(b, buf, l);
	return b;
}