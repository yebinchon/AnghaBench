#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX9877_INPUT_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* i2c ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * max9877_regs ; 

__attribute__((used)) static void FUNC3(void)
{
	unsigned int i;
	u8 data[6];

	data[0] = MAX9877_INPUT_MODE;
	for (i = 0; i < FUNC0(max9877_regs); i++)
		data[i + 1] = max9877_regs[i];

	if (FUNC2(i2c, data, 6) != 6)
		FUNC1(&i2c->dev, "i2c write failed\n");
}