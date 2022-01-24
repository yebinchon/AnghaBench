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
typedef  int u8 ;
typedef  int u16 ;
struct isp116x {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct isp116x*) ; 
 int FUNC1 (struct isp116x*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct isp116x *isp116x, void *buf, int len)
{
	u8 *dp = (u8 *) buf;
	u16 *dp2 = (u16 *) buf;
	u16 w;
	int quot = len % 4;

	/* buffer is already in 'usb data order', which is LE. */
	/* When reading buffer as u16, we have to take care byte order */
	/* doesn't get mixed up */

	if ((unsigned long)dp2 & 1) {
		/* not aligned */
		for (; len > 1; len -= 2) {
			w = FUNC0(isp116x);
			*dp++ = w & 0xff;
			*dp++ = (w >> 8) & 0xff;
		}

		if (len)
			*dp = 0xff & FUNC1(isp116x);
	} else {
		/* aligned */
		for (; len > 1; len -= 2) {
			/* Keep byte order! */
			*dp2++ = FUNC2(FUNC0(isp116x));
		}

		if (len)
			*(u8 *) dp2 = 0xff & FUNC1(isp116x);
	}
	if (quot == 1 || quot == 2)
		FUNC0(isp116x);
}