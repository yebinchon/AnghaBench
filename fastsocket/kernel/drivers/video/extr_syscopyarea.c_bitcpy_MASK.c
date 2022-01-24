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
struct fb_info {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct fb_info*,unsigned long,int) ; 
 unsigned long FUNC1 (unsigned long const,unsigned long,unsigned long) ; 

__attribute__((used)) static void
FUNC2(struct fb_info *p, unsigned long *dst, int dst_idx,
		const unsigned long *src, int src_idx, int bits, unsigned n)
{
	unsigned long first, last;
	int const shift = dst_idx-src_idx;
	int left, right;

	first = FUNC0(p, ~0UL, dst_idx);
	last = ~(FUNC0(p, ~0UL, (dst_idx+n) % bits));

	if (!shift) {
		/* Same alignment for source and dest */
		if (dst_idx+n <= bits) {
			/* Single word */
			if (last)
				first &= last;
			*dst = FUNC1(*src, *dst, first);
		} else {
			/* Multiple destination words */
			/* Leading bits */
 			if (first != ~0UL) {
				*dst = FUNC1(*src, *dst, first);
				dst++;
				src++;
				n -= bits - dst_idx;
			}

			/* Main chunk */
			n /= bits;
			while (n >= 8) {
				*dst++ = *src++;
				*dst++ = *src++;
				*dst++ = *src++;
				*dst++ = *src++;
				*dst++ = *src++;
				*dst++ = *src++;
				*dst++ = *src++;
				*dst++ = *src++;
				n -= 8;
			}
			while (n--)
				*dst++ = *src++;

			/* Trailing bits */
			if (last)
				*dst = FUNC1(*src, *dst, last);
		}
	} else {
		unsigned long d0, d1;
		int m;

		/* Different alignment for source and dest */
		right = shift & (bits - 1);
		left = -shift & (bits - 1);

		if (dst_idx+n <= bits) {
			/* Single destination word */
			if (last)
				first &= last;
			if (shift > 0) {
				/* Single source word */
				*dst = FUNC1(*src >> right, *dst, first);
			} else if (src_idx+n <= bits) {
				/* Single source word */
				*dst = FUNC1(*src << left, *dst, first);
			} else {
				/* 2 source words */
				d0 = *src++;
				d1 = *src;
				*dst = FUNC1(d0 << left | d1 >> right, *dst,
					    first);
			}
		} else {
			/* Multiple destination words */
			/** We must always remember the last value read,
			    because in case SRC and DST overlap bitwise (e.g.
			    when moving just one pixel in 1bpp), we always
			    collect one full long for DST and that might
			    overlap with the current long from SRC. We store
			    this value in 'd0'. */
			d0 = *src++;
			/* Leading bits */
			if (shift > 0) {
				/* Single source word */
				*dst = FUNC1(d0 >> right, *dst, first);
				dst++;
				n -= bits - dst_idx;
			} else {
				/* 2 source words */
				d1 = *src++;
				*dst = FUNC1(d0 << left | *dst >> right, *dst, first);
				d0 = d1;
				dst++;
				n -= bits - dst_idx;
			}

			/* Main chunk */
			m = n % bits;
			n /= bits;
			while (n >= 4) {
				d1 = *src++;
				*dst++ = d0 << left | d1 >> right;
				d0 = d1;
				d1 = *src++;
				*dst++ = d0 << left | d1 >> right;
				d0 = d1;
				d1 = *src++;
				*dst++ = d0 << left | d1 >> right;
				d0 = d1;
				d1 = *src++;
				*dst++ = d0 << left | d1 >> right;
				d0 = d1;
				n -= 4;
			}
			while (n--) {
				d1 = *src++;
				*dst++ = d0 << left | d1 >> right;
				d0 = d1;
			}

			/* Trailing bits */
			if (last) {
				if (m <= right) {
					/* Single source word */
					*dst = FUNC1(d0 << left, *dst, last);
				} else {
					/* 2 source words */
 					d1 = *src;
					*dst = FUNC1(d0 << left | d1 >> right,
						    *dst, last);
				}
			}
		}
	}
}