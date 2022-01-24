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
struct c67x00_device {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int FUNC0 (struct c67x00_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct c67x00_device*,int,int /*<<< orphan*/ *,int) ; 

void FUNC2(struct c67x00_device *dev, u16 addr,
			     void *data, int len)
{
	u8 *buf = data;

	if (addr & 0x01) {
		/* unaligned access */
		u16 tmp;
		tmp = FUNC0(dev, addr - 1);
		*buf++ = (tmp >> 8) & 0x00ff;
		addr++;
		len--;
	}

	FUNC1(dev, addr, (__le16 *)buf, len / 2);
	buf += len & ~0x01;
	addr += len & ~0x01;
	len &= 0x01;

	if (len) {
		u16 tmp;
		tmp = FUNC0(dev, addr);
		*buf = tmp & 0x00ff;
	}
}