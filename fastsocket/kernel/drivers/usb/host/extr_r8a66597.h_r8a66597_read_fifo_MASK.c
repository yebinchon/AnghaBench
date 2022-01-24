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
typedef  int /*<<< orphan*/  u16 ;
struct r8a66597 {unsigned long reg; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ on_chip; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned long*,int) ; 

__attribute__((used)) static inline void FUNC4(struct r8a66597 *r8a66597,
				      unsigned long offset, u16 *buf,
				      int len)
{
	unsigned long fifoaddr = r8a66597->reg + offset;
	unsigned long count;

	if (r8a66597->pdata->on_chip) {
		count = len / 4;
		FUNC1(fifoaddr, buf, count);

		if (len & 0x00000003) {
			unsigned long tmp = FUNC0(fifoaddr);
			FUNC3((unsigned char *)buf + count * 4, &tmp,
			       len & 0x03);
		}
	} else {
		len = (len + 1) / 2;
		FUNC2(fifoaddr, buf, len);
	}
}