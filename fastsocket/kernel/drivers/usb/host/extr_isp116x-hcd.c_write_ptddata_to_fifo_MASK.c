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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isp116x*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct isp116x*,int) ; 

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
			w = *dp++;
			w |= *dp++ << 8;
			FUNC1(isp116x, w);
		}
		if (len)
			FUNC2(isp116x, (u16) * dp);
	} else {
		/* aligned */
		for (; len > 1; len -= 2) {
			/* Keep byte order ! */
			FUNC1(isp116x, FUNC0(*dp2++));
		}

		if (len)
			FUNC2(isp116x, 0xff & *((u8 *) dp2));
	}
	if (quot == 1 || quot == 2)
		FUNC1(isp116x, 0);
}