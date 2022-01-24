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
struct r8a66597 {unsigned long reg; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ on_chip; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned char*,int) ; 
 unsigned int FUNC3 (unsigned long) ; 

__attribute__((used)) static inline void FUNC4(struct r8a66597 *r8a66597,
				      unsigned long offset,
				      unsigned char *buf,
				      int len)
{
	unsigned long fifoaddr = r8a66597->reg + offset;
	unsigned int data;
	int i;

	if (r8a66597->pdata->on_chip) {
		/* 32-bit accesses for on_chip controllers */

		/* aligned buf case */
		if (len >= 4 && !((unsigned long)buf & 0x03)) {
			FUNC1(fifoaddr, buf, len / 4);
			buf += len & ~0x03;
			len &= 0x03;
		}

		/* unaligned buf case */
		for (i = 0; i < len; i++) {
			if (!(i & 0x03))
				data = FUNC0(fifoaddr);

			buf[i] = (data >> ((i & 0x03) * 8)) & 0xff;
		}
	} else {
		/* 16-bit accesses for external controllers */

		/* aligned buf case */
		if (len >= 2 && !((unsigned long)buf & 0x01)) {
			FUNC2(fifoaddr, buf, len / 2);
			buf += len & ~0x01;
			len &= 0x01;
		}

		/* unaligned buf case */
		for (i = 0; i < len; i++) {
			if (!(i & 0x01))
				data = FUNC3(fifoaddr);

			buf[i] = (data >> ((i & 0x01) * 8)) & 0xff;
		}
	}
}