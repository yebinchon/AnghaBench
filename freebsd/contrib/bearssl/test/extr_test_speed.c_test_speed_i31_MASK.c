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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ clock_t ;

/* Variables and functions */
 double CLOCKS_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,double) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC11(void)
{
	static const unsigned char bp[] = {
		/* A 521-bit prime integer (order of the P-521 curve). */
		0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0xFF, 0xFA, 0x51, 0x86, 0x87, 0x83, 0xBF, 0x2F,
		0x96, 0x6B, 0x7F, 0xCC, 0x01, 0x48, 0xF7, 0x09,
		0xA5, 0xD0, 0x3B, 0xB5, 0xC9, 0xB8, 0x89, 0x9C,
		0x47, 0xAE, 0xBB, 0x6F, 0xB7, 0x1E, 0x91, 0x38,
		0x64, 0x09
	};

	unsigned char tmp[60 + sizeof bp];
	uint32_t p[20], x[20], y[20], z[20], uu[60], p0i;
	int i;
	long num;

	FUNC0(p, bp, sizeof bp);
	p0i = FUNC5(p[1]);
	FUNC9(tmp, 'T', sizeof tmp);
	FUNC1(x, tmp, sizeof tmp, p);
	FUNC9(tmp, 'U', sizeof tmp);
	FUNC1(y, tmp, sizeof tmp, p);

	for (i = 0; i < 10; i ++) {
		FUNC6(x, p);
	}
	num = 10;
	for (;;) {
		clock_t begin, end;
		double tt;
		long k;

		begin = FUNC7();
		for (k = num; k > 0; k --) {
			FUNC6(x, p);
		}
		end = FUNC7();
		tt = (double)(end - begin) / CLOCKS_PER_SEC;
		if (tt >= 2.0) {
			FUNC10("%-30s %8.2f ops/s\n", "i31 to_monty",
				(double)num / tt);
			FUNC8(stdout);
			break;
		}
		num <<= 1;
	}

	for (i = 0; i < 10; i ++) {
		FUNC2(x, p, p0i);
	}
	num = 10;
	for (;;) {
		clock_t begin, end;
		double tt;
		long k;

		begin = FUNC7();
		for (k = num; k > 0; k --) {
			FUNC2(x, p, p0i);
		}
		end = FUNC7();
		tt = (double)(end - begin) / CLOCKS_PER_SEC;
		if (tt >= 2.0) {
			FUNC10("%-30s %8.2f ops/s\n", "i31 from_monty",
				(double)num / tt);
			FUNC8(stdout);
			break;
		}
		num <<= 1;
	}

	for (i = 0; i < 10; i ++) {
		FUNC4(z, x, y, p, p0i);
	}
	num = 10;
	for (;;) {
		clock_t begin, end;
		double tt;
		long k;

		begin = FUNC7();
		for (k = num; k > 0; k --) {
			FUNC4(z, x, y, p, p0i);
		}
		end = FUNC7();
		tt = (double)(end - begin) / CLOCKS_PER_SEC;
		if (tt >= 2.0) {
			FUNC10("%-30s %8.2f ops/s\n", "i31 montymul",
				(double)num / tt);
			FUNC8(stdout);
			break;
		}
		num <<= 1;
	}

	for (i = 0; i < 10; i ++) {
		FUNC3(x, y, p, p0i, uu);
	}
	num = 10;
	for (;;) {
		clock_t begin, end;
		double tt;
		long k;

		begin = FUNC7();
		for (k = num; k > 0; k --) {
			FUNC3(x, y, p, p0i, uu);
		}
		end = FUNC7();
		tt = (double)(end - begin) / CLOCKS_PER_SEC;
		if (tt >= 2.0) {
			FUNC10("%-30s %8.2f ops/s\n", "i31 moddiv",
				(double)num / tt);
			FUNC8(stdout);
			break;
		}
		num <<= 1;
	}
}