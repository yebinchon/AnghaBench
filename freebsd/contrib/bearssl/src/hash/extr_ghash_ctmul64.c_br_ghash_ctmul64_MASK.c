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
typedef  int uint64_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int) ; 

void
FUNC6(void *y, const void *h, const void *data, size_t len)
{
	const unsigned char *buf, *hb;
	unsigned char *yb;
	uint64_t y0, y1;
	uint64_t h0, h1, h2, h0r, h1r, h2r;

	buf = data;
	yb = y;
	hb = h;
	y1 = FUNC1(yb);
	y0 = FUNC1(yb + 8);
	h1 = FUNC1(hb);
	h0 = FUNC1(hb + 8);
	h0r = FUNC5(h0);
	h1r = FUNC5(h1);
	h2 = h0 ^ h1;
	h2r = h0r ^ h1r;
	while (len > 0) {
		const unsigned char *src;
		unsigned char tmp[16];
		uint64_t y0r, y1r, y2, y2r;
		uint64_t z0, z1, z2, z0h, z1h, z2h;
		uint64_t v0, v1, v2, v3;

		if (len >= 16) {
			src = buf;
			buf += 16;
			len -= 16;
		} else {
			FUNC3(tmp, buf, len);
			FUNC4(tmp + len, 0, (sizeof tmp) - len);
			src = tmp;
			len = 0;
		}
		y1 ^= FUNC1(src);
		y0 ^= FUNC1(src + 8);

		y0r = FUNC5(y0);
		y1r = FUNC5(y1);
		y2 = y0 ^ y1;
		y2r = y0r ^ y1r;

		z0 = FUNC0(y0, h0);
		z1 = FUNC0(y1, h1);
		z2 = FUNC0(y2, h2);
		z0h = FUNC0(y0r, h0r);
		z1h = FUNC0(y1r, h1r);
		z2h = FUNC0(y2r, h2r);
		z2 ^= z0 ^ z1;
		z2h ^= z0h ^ z1h;
		z0h = FUNC5(z0h) >> 1;
		z1h = FUNC5(z1h) >> 1;
		z2h = FUNC5(z2h) >> 1;

		v0 = z0;
		v1 = z0h ^ z2;
		v2 = z1 ^ z2h;
		v3 = z1h;

		v3 = (v3 << 1) | (v2 >> 63);
		v2 = (v2 << 1) | (v1 >> 63);
		v1 = (v1 << 1) | (v0 >> 63);
		v0 = (v0 << 1);

		v2 ^= v0 ^ (v0 >> 1) ^ (v0 >> 2) ^ (v0 >> 7);
		v1 ^= (v0 << 63) ^ (v0 << 62) ^ (v0 << 57);
		v3 ^= v1 ^ (v1 >> 1) ^ (v1 >> 2) ^ (v1 >> 7);
		v2 ^= (v1 << 63) ^ (v1 << 62) ^ (v1 << 57);

		y0 = v2;
		y1 = v3;
	}

	FUNC2(yb, y1);
	FUNC2(yb + 8, y0);
}