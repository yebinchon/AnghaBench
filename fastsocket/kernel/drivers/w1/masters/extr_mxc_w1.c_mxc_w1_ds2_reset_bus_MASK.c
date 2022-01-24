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
struct mxc_w1_device {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ MXC_W1_CONTROL ; 
 unsigned int MXC_W1_RESET_TIMEOUT ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static u8 FUNC3(void *data)
{
	u8 reg_val;
	unsigned int timeout_cnt = 0;
	struct mxc_w1_device *dev = data;

	FUNC1(0x80, (dev->regs + MXC_W1_CONTROL));

	while (1) {
		reg_val = FUNC0(dev->regs + MXC_W1_CONTROL);

		if (((reg_val >> 7) & 0x1) == 0 ||
		    timeout_cnt > MXC_W1_RESET_TIMEOUT)
			break;
		else
			timeout_cnt++;

		FUNC2(100);
	}
	return (reg_val >> 7) & 0x1;
}