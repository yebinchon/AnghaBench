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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int const,unsigned int) ; 

__attribute__((used)) static void FUNC6(const void *data, const unsigned int len)
{
	unsigned int offset;
	uint32_t value;

	FUNC0(len > AR9170_USB_EP_CTRL_MAX);
	FUNC1(len > AR9170_USB_EP_CTRL_MAX);

	for (offset = 0; offset < ((len + 3) & ~3); offset += 4) {
		value = FUNC3(AR9170_USB_REG_EP0_DATA);
		FUNC4(FUNC2(data, offset), &value,
		       FUNC5(len - offset, (unsigned int)4));
	}
}