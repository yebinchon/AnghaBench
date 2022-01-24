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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 unsigned int const AR9170_USB_EP_CTRL_MAX ; 
 int /*<<< orphan*/  AR9170_USB_REG_EP0_DATA ; 
 int /*<<< orphan*/  AR9170_USB_REG_FIFO_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC4 (unsigned int const,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(const void *data, const unsigned int len)
{
	unsigned int offset = 0, block, last_block = 0;
	uint32_t value;

	FUNC0(len > AR9170_USB_EP_CTRL_MAX);
	FUNC1(len > AR9170_USB_EP_CTRL_MAX);

	block = FUNC4(len, (unsigned int) 4);
	offset = 0;
	while (offset < len) {

		if (last_block != block || block < 4)
			FUNC6(AR9170_USB_REG_FIFO_SIZE, (1 << block) - 1);

		FUNC3(&value, FUNC2(data, offset), block);

		FUNC5(AR9170_USB_REG_EP0_DATA, value);

		offset += block;
		last_block = block = FUNC4(len - offset, (unsigned int) 4);
	}

	FUNC6(AR9170_USB_REG_FIFO_SIZE, 0xf);

	/* this will push the data to the host */
	return 1;
}