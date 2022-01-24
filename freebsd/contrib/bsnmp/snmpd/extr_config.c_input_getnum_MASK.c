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
typedef  scalar_t__ u_int ;

/* Variables and functions */
 int EOF ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ numval ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(u_int base, u_int flen)
{
	int c;
	u_int cnt;

	cnt = 0;
	numval = 0;
	while (flen == 0 || cnt < flen) {
		if ((c = FUNC0()) == EOF) {
			if (cnt == 0)
				FUNC5("bad number");
			return;
		}
		if (FUNC2(c)) {
			if (base == 8 && (c == '8' || c == '9')) {
				FUNC1(c);
				if (cnt == 0)
					FUNC5("bad number");
				return;
			}
			numval = numval * base + (c - '0');
		} else if (base == 16 && FUNC4(c)) {
			if (FUNC3(c))
				numval = numval * base + (c - 'a' + 10);
			else
				numval = numval * base + (c - 'A' + 10);
		} else {
			FUNC1(c);
			if (cnt == 0)
				FUNC5("bad number");
			return;
		}
		cnt++;
	}
}