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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__* K ; 
 size_t* MP ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int,unsigned char const*) ; 

void
FUNC6(const unsigned char *buf, uint32_t *val)
{
	uint32_t m[16];
	uint32_t a, b, c, d;
	int i;

	a = val[0];
	b = val[1];
	c = val[2];
	d = val[3];
	/* obsolete
	for (i = 0; i < 16; i ++) {
		m[i] = br_dec32le(buf + (i << 2));
	}
	*/
	FUNC5(m, 16, buf);

	for (i = 0; i < 16; i += 4) {
		a = b + FUNC4(a + FUNC0(b, c, d) + m[i + 0] + K[i + 0],  7);
		d = a + FUNC4(d + FUNC0(a, b, c) + m[i + 1] + K[i + 1], 12);
		c = d + FUNC4(c + FUNC0(d, a, b) + m[i + 2] + K[i + 2], 17);
		b = c + FUNC4(b + FUNC0(c, d, a) + m[i + 3] + K[i + 3], 22);
	}
	for (i = 16; i < 32; i += 4) {
		a = b + FUNC4(a + FUNC1(b, c, d) + m[MP[i - 16]] + K[i + 0],  5);
		d = a + FUNC4(d + FUNC1(a, b, c) + m[MP[i - 15]] + K[i + 1],  9);
		c = d + FUNC4(c + FUNC1(d, a, b) + m[MP[i - 14]] + K[i + 2], 14);
		b = c + FUNC4(b + FUNC1(c, d, a) + m[MP[i - 13]] + K[i + 3], 20);
	}
	for (i = 32; i < 48; i += 4) {
		a = b + FUNC4(a + FUNC2(b, c, d) + m[MP[i - 16]] + K[i + 0],  4);
		d = a + FUNC4(d + FUNC2(a, b, c) + m[MP[i - 15]] + K[i + 1], 11);
		c = d + FUNC4(c + FUNC2(d, a, b) + m[MP[i - 14]] + K[i + 2], 16);
		b = c + FUNC4(b + FUNC2(c, d, a) + m[MP[i - 13]] + K[i + 3], 23);
	}
	for (i = 48; i < 64; i += 4) {
		a = b + FUNC4(a + FUNC3(b, c, d) + m[MP[i - 16]] + K[i + 0],  6);
		d = a + FUNC4(d + FUNC3(a, b, c) + m[MP[i - 15]] + K[i + 1], 10);
		c = d + FUNC4(c + FUNC3(d, a, b) + m[MP[i - 14]] + K[i + 2], 15);
		b = c + FUNC4(b + FUNC3(c, d, a) + m[MP[i - 13]] + K[i + 3], 21);
	}

	val[0] += a;
	val[1] += b;
	val[2] += c;
	val[3] += d;
}