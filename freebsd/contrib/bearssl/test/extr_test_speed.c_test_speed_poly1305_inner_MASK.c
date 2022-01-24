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
typedef  int /*<<< orphan*/  (* br_poly1305_run ) (unsigned char*,unsigned char*,unsigned char*,int,unsigned char*,int,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;

/* Variables and functions */
 double CLOCKS_PER_SEC ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  fake_chacha20 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,char,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,double) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC4(char *name, br_poly1305_run pl)
{
	unsigned char buf[8192], key[32], iv[12], aad[13], tag[16];
	int i;
	long num;

	FUNC2(key, 'K', sizeof key);
	FUNC2(iv, 'I', sizeof iv);
	FUNC2(aad, 'A', sizeof aad);
	FUNC2(buf, 'T', sizeof buf);
	for (i = 0; i < 10; i ++) {
		pl(key, iv, buf, sizeof buf,
			aad, sizeof aad, tag, &fake_chacha20, 0);
	}
	num = 10;
	for (;;) {
		clock_t begin, end;
		double tt;
		long k;

		begin = FUNC0();
		for (k = num; k > 0; k --) {
			pl(key, iv, buf, sizeof buf,
				aad, sizeof aad, tag, &fake_chacha20, 0);
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