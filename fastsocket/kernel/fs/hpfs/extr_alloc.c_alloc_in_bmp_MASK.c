#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
typedef  int secno ;
struct TYPE_2__ {scalar_t__ sb_chk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,char*,unsigned int,...) ; 
 unsigned int* FUNC2 (struct super_block*,int,struct quad_buffer_head*,char*) ; 
 unsigned int* FUNC3 (struct super_block*,struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct quad_buffer_head*) ; 
 TYPE_1__* FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int FUNC7 (unsigned int*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*) ; 

__attribute__((used)) static secno FUNC9(struct super_block *s, secno near, unsigned n, unsigned forward)
{
	struct quad_buffer_head qbh;
	unsigned *bmp;
	unsigned bs = near & ~0x3fff;
	unsigned nr = (near & 0x3fff) & ~(n - 1);
	/*unsigned mnr;*/
	unsigned i, q;
	int a, b;
	secno ret = 0;
	if (n != 1 && n != 4) {
		FUNC1(s, "Bad allocation size: %d", n);
		return 0;
	}
	FUNC6(s);
	if (bs != ~0x3fff) {
		if (!(bmp = FUNC2(s, near >> 14, &qbh, "aib"))) goto uls;
	} else {
		if (!(bmp = FUNC3(s, &qbh))) goto uls;
	}
	if (!FUNC7(bmp, nr, n + forward)) {
		ret = bs + nr;
		goto rt;
	}
	/*if (!tstbits(bmp, nr + n, n + forward)) {
		ret = bs + nr + n;
		goto rt;
	}*/
	q = nr + n; b = 0;
	while ((a = FUNC7(bmp, q, n + forward)) != 0) {
		q += a;
		if (n != 1) q = ((q-1)&~(n-1))+n;
		if (!b) {
			if (q>>5 != nr>>5) {
				b = 1;
				q = nr & 0x1f;
			}
		} else if (q > nr) break;
	}
	if (!a) {
		ret = bs + q;
		goto rt;
	}
	nr >>= 5;
	/*for (i = nr + 1; i != nr; i++, i &= 0x1ff) {*/
	i = nr;
	do {
		if (!bmp[i]) goto cont;
		if (n + forward >= 0x3f && bmp[i] != -1) goto cont;
		q = i<<5;
		if (i > 0) {
			unsigned k = bmp[i-1];
			while (k & 0x80000000) {
				q--; k <<= 1;
			}
		}
		if (n != 1) q = ((q-1)&~(n-1))+n;
		while ((a = FUNC7(bmp, q, n + forward)) != 0) {
			q += a;
			if (n != 1) q = ((q-1)&~(n-1))+n;
			if (q>>5 > i) break;
		}
		if (!a) {
			ret = bs + q;
			goto rt;
		}
		cont:
		i++, i &= 0x1ff;
	} while (i != nr);
	rt:
	if (ret) {
		if (FUNC5(s)->sb_chk && ((ret >> 14) != (bs >> 14) || (bmp[(ret & 0x3fff) >> 5] | ~(((1 << n) - 1) << (ret & 0x1f))) != 0xffffffff)) {
			FUNC1(s, "Allocation doesn't work! Wanted %d, allocated at %08x", n, ret);
			ret = 0;
			goto b;
		}
		bmp[(ret & 0x3fff) >> 5] &= ~(((1 << n) - 1) << (ret & 0x1f));
		FUNC4(&qbh);
	}
	b:
	FUNC0(&qbh);
	uls:
	FUNC8(s);
	return ret;
}