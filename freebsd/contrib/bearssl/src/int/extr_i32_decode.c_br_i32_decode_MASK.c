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
 int FUNC0 (unsigned char const*) ; 
 int FUNC1 (unsigned char const*) ; 
 int FUNC2 (int*,size_t) ; 

void
FUNC3(uint32_t *x, const void *src, size_t len)
{
	const unsigned char *buf;
	size_t u, v;

	buf = src;
	u = len;
	v = 1;
	for (;;) {
		if (u < 4) {
			uint32_t w;

			if (u < 2) {
				if (u == 0) {
					break;
				} else {
					w = buf[0];
				}
			} else {
				if (u == 2) {
					w = FUNC0(buf);
				} else {
					w = ((uint32_t)buf[0] << 16)
						| FUNC0(buf + 1);
				}
			}
			x[v ++] = w;
			break;
		} else {
			u -= 4;
			x[v ++] = FUNC1(buf + u);
		}
	}
	x[0] = FUNC2(x + 1, v - 1);
}