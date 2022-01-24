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
 unsigned long FUNC1 (unsigned long,unsigned long,unsigned long) ; 

__attribute__((used)) static void
FUNC2(struct fb_info *p, unsigned long *dst, int dst_idx,
		unsigned long pat, unsigned n, int bits)
{
	unsigned long first, last;

	if (!n)
		return;

	first = FUNC0(p, ~0UL, dst_idx);
	last = ~(FUNC0(p, ~0UL, (dst_idx+n) % bits));

	if (dst_idx+n <= bits) {
		/* Single word */
		if (last)
			first &= last;
		*dst = FUNC1(pat, *dst, first);
	} else {
		/* Multiple destination words */

		/* Leading bits */
 		if (first!= ~0UL) {
			*dst = FUNC1(pat, *dst, first);
			dst++;
			n -= bits - dst_idx;
		}

		/* Main chunk */
		n /= bits;
		while (n >= 8) {
			*dst++ = pat;
			*dst++ = pat;
			*dst++ = pat;
			*dst++ = pat;
			*dst++ = pat;
			*dst++ = pat;
			*dst++ = pat;
			*dst++ = pat;
			n -= 8;
		}
		while (n--)
			*dst++ = pat;
		/* Trailing bits */
		if (last)
			*dst = FUNC1(pat, *dst, last);
	}
}