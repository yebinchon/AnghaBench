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
typedef  int /*<<< orphan*/  br_shake_context ;

/* Variables and functions */
 double CLOCKS_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,char,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,double) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC8(int security_level)
{
	unsigned char buf[8192];
	br_shake_context sc;
	int i;
	long num;

	FUNC6(buf, 'D', sizeof buf);
	FUNC1(&sc, security_level);
	for (i = 0; i < 10; i ++) {
		FUNC2(&sc, buf, sizeof buf);
	}
	num = 10;
	for (;;) {
		clock_t begin, end;
		double tt;
		long k;

		begin = FUNC4();
		for (k = num; k > 0; k --) {
			FUNC2(&sc, buf, sizeof buf);
		}
		end = FUNC4();
		tt = (double)(end - begin) / CLOCKS_PER_SEC;
		if (tt >= 2.0) {
			FUNC7("SHAKE%-3d (inject)              %8.2f MB/s\n",
				security_level,
				((double)sizeof buf) * (double)num
				/ (tt * 1000000.0));
			FUNC5(stdout);
			break;
		}
		num <<= 1;
	}

	FUNC0(&sc);
	for (i = 0; i < 10; i ++) {
		FUNC3(&sc, buf, sizeof buf);
	}

	num = 10;
	for (;;) {
		clock_t begin, end;
		double tt;
		long k;

		begin = FUNC4();
		for (k = num; k > 0; k --) {
			FUNC3(&sc, buf, sizeof buf);
		}
		end = FUNC4();
		tt = (double)(end - begin) / CLOCKS_PER_SEC;
		if (tt >= 2.0) {
			FUNC7("SHAKE%-3d (produce)             %8.2f MB/s\n",
				security_level,
				((double)sizeof buf) * (double)num
				/ (tt * 1000000.0));
			FUNC5(stdout);
			break;
		}
		num <<= 1;
	}
}