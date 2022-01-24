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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  __end_rodata ; 
 int /*<<< orphan*/  __start_rodata ; 
 int /*<<< orphan*/  _etext ; 
 int /*<<< orphan*/  _text ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ *,char*,void*,unsigned long) ; 
 scalar_t__ FUNC1 (void*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct device *dev, void *addr, unsigned long len)
{
	if (FUNC1(addr, len, _text, _etext) ||
	    FUNC1(addr, len, __start_rodata, __end_rodata))
		FUNC0(dev, NULL, "DMA-API: device driver maps memory from kernel text or rodata [addr=%p] [len=%lu]\n", addr, len);
}