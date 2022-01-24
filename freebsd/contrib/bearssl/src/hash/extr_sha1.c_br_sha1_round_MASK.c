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
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int FUNC1 (int,int,int) ; 
 int FUNC2 (int,int,int) ; 
 int FUNC3 (int,int,int) ; 
 int K1 ; 
 int K2 ; 
 int K3 ; 
 int K4 ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,unsigned char const*) ; 

void
FUNC6(const unsigned char *buf, uint32_t *val)
{
	uint32_t m[80];
	uint32_t a, b, c, d, e;
	int i;

	a = val[0];
	b = val[1];
	c = val[2];
	d = val[3];
	e = val[4];
	FUNC5(m, 16, buf);
	for (i = 16; i < 80; i ++) {
		uint32_t x = m[i - 3] ^ m[i - 8] ^ m[i - 14] ^ m[i - 16];
		m[i] = FUNC4(x, 1);
	}

	for (i = 0; i < 20; i += 5) {
		e += FUNC4(a, 5) + FUNC0(b, c, d) + K1 + m[i + 0]; b = FUNC4(b, 30);
		d += FUNC4(e, 5) + FUNC0(a, b, c) + K1 + m[i + 1]; a = FUNC4(a, 30);
		c += FUNC4(d, 5) + FUNC0(e, a, b) + K1 + m[i + 2]; e = FUNC4(e, 30);
		b += FUNC4(c, 5) + FUNC0(d, e, a) + K1 + m[i + 3]; d = FUNC4(d, 30);
		a += FUNC4(b, 5) + FUNC0(c, d, e) + K1 + m[i + 4]; c = FUNC4(c, 30);
	}
	for (i = 20; i < 40; i += 5) {
		e += FUNC4(a, 5) + FUNC1(b, c, d) + K2 + m[i + 0]; b = FUNC4(b, 30);
		d += FUNC4(e, 5) + FUNC1(a, b, c) + K2 + m[i + 1]; a = FUNC4(a, 30);
		c += FUNC4(d, 5) + FUNC1(e, a, b) + K2 + m[i + 2]; e = FUNC4(e, 30);
		b += FUNC4(c, 5) + FUNC1(d, e, a) + K2 + m[i + 3]; d = FUNC4(d, 30);
		a += FUNC4(b, 5) + FUNC1(c, d, e) + K2 + m[i + 4]; c = FUNC4(c, 30);
	}
	for (i = 40; i < 60; i += 5) {
		e += FUNC4(a, 5) + FUNC2(b, c, d) + K3 + m[i + 0]; b = FUNC4(b, 30);
		d += FUNC4(e, 5) + FUNC2(a, b, c) + K3 + m[i + 1]; a = FUNC4(a, 30);
		c += FUNC4(d, 5) + FUNC2(e, a, b) + K3 + m[i + 2]; e = FUNC4(e, 30);
		b += FUNC4(c, 5) + FUNC2(d, e, a) + K3 + m[i + 3]; d = FUNC4(d, 30);
		a += FUNC4(b, 5) + FUNC2(c, d, e) + K3 + m[i + 4]; c = FUNC4(c, 30);
	}
	for (i = 60; i < 80; i += 5) {
		e += FUNC4(a, 5) + FUNC3(b, c, d) + K4 + m[i + 0]; b = FUNC4(b, 30);
		d += FUNC4(e, 5) + FUNC3(a, b, c) + K4 + m[i + 1]; a = FUNC4(a, 30);
		c += FUNC4(d, 5) + FUNC3(e, a, b) + K4 + m[i + 2]; e = FUNC4(e, 30);
		b += FUNC4(c, 5) + FUNC3(d, e, a) + K4 + m[i + 3]; d = FUNC4(d, 30);
		a += FUNC4(b, 5) + FUNC3(c, d, e) + K4 + m[i + 4]; c = FUNC4(c, 30);
	}

	val[0] += a;
	val[1] += b;
	val[2] += c;
	val[3] += d;
	val[4] += e;
}