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
typedef  scalar_t__ clock_t ;
typedef  int /*<<< orphan*/  (* br_ghash ) (unsigned char*,unsigned char*,unsigned char*,int) ;

/* Variables and functions */
 double CLOCKS_PER_SEC ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,char,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,double) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC4(char *name, br_ghash gh)
{
	unsigned char buf[8192], h[16], y[16];
	int i;
	long num;

	FUNC2(buf, 'T', sizeof buf);
	FUNC2(h, 'P', sizeof h);
	FUNC2(y, 0, sizeof y);
	for (i = 0; i < 10; i ++) {
		gh(y, h, buf, sizeof buf);
	}
	num = 10;
	for (;;) {
		clock_t begin, end;
		double tt;
		long k;

		begin = FUNC0();
		for (k = num; k > 0; k --) {
			gh(y, h, buf, sizeof buf);
		}
		end = FUNC0();
		tt = (double)(end - begin) / CLOCKS_PER_SEC;
		if (tt >= 2.0) {
			FUNC3("%-30s %8.2f MB/s\n", name,
				((double)sizeof buf) * (double)num
				/ (tt * 1000000.0));
			FUNC1(stdout);
			return;
		}
		num <<= 1;
	}
}