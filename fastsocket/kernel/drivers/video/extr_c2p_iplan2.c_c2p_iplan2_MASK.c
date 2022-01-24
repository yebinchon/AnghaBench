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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  d ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int,int*,int) ; 

void FUNC5(void *dst, const void *src, u32 dx, u32 dy, u32 width,
		u32 height, u32 dst_nextline, u32 src_nextline, u32 bpp)
{
	union {
		u8 pixels[16];
		u32 words[4];
	} d;
	u32 dst_idx, first, last, w;
	const u8 *c;
	void *p;

	dst += dy*dst_nextline+(dx & ~15)*bpp;
	dst_idx = dx % 16;
	first = 0xffffU >> dst_idx;
	first |= first << 16;
	last = 0xffffU ^ (0xffffU >> ((dst_idx+width) % 16));
	last |= last << 16;
	while (height--) {
		c = src;
		p = dst;
		w = width;
		if (dst_idx+width <= 16) {
			/* Single destination word */
			first &= last;
			FUNC2(d.pixels, 0, sizeof(d));
			FUNC1(d.pixels+dst_idx, c, width);
			c += width;
			FUNC0(d.words);
			FUNC4(p, bpp, d.words, first);
			p += bpp*2;
		} else {
			/* Multiple destination words */
			w = width;
			/* Leading bits */
			if (dst_idx) {
				w = 16 - dst_idx;
				FUNC2(d.pixels, 0, dst_idx);
				FUNC1(d.pixels+dst_idx, c, w);
				c += w;
				FUNC0(d.words);
				FUNC4(p, bpp, d.words, first);
				p += bpp*2;
				w = width-w;
			}
			/* Main chunk */
			while (w >= 16) {
				FUNC1(d.pixels, c, 16);
				c += 16;
				FUNC0(d.words);
				FUNC3(p, bpp, d.words);
				p += bpp*2;
				w -= 16;
			}
			/* Trailing bits */
			w %= 16;
			if (w > 0) {
				FUNC1(d.pixels, c, w);
				FUNC2(d.pixels+w, 0, 16-w);
				FUNC0(d.words);
				FUNC4(p, bpp, d.words, last);
			}
		}
		src += src_nextline;
		dst += dst_nextline;
	}
}