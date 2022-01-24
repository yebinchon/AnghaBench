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
struct address_info {int* slots; scalar_t__ always_detect; scalar_t__ irq; int /*<<< orphan*/  io_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct address_info*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void** mpu401_synth_operations ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(struct address_info *hw_config)
{
	void *p;
	int n=hw_config->slots[1];
		
	if (n != -1) {
		FUNC2(hw_config->io_base, 2);
		if (hw_config->always_detect == 0 && hw_config->irq > 0)
			FUNC0(hw_config->irq, hw_config);
		p=mpu401_synth_operations[n];
		FUNC3(n);
		FUNC4(hw_config->slots[2]);
		FUNC1(p);
	}
}