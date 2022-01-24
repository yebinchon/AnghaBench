#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gpio_input_state {int /*<<< orphan*/ * key_state; TYPE_2__* info; } ;
struct TYPE_4__ {int keymap_size; TYPE_1__* keymap; } ;
struct TYPE_3__ {int /*<<< orphan*/  gpio; } ;

/* Variables and functions */
 unsigned long IRQF_TRIGGER_FALLING ; 
 unsigned long IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gpio_event_input_irq_handler ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 (unsigned int,int /*<<< orphan*/ ,unsigned long,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct gpio_input_state *ds)
{
	int i;
	int err;
	unsigned int irq;
	unsigned long req_flags = IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING;

	for (i = 0; i < ds->info->keymap_size; i++) {
		err = irq = FUNC2(ds->info->keymap[i].gpio);
		if (err < 0)
			goto err_gpio_get_irq_num_failed;
		err = FUNC4(irq, gpio_event_input_irq_handler,
				  req_flags, "gpio_keys", &ds->key_state[i]);
		if (err) {
			FUNC3("gpio_event_input_request_irqs: request_irq "
				"failed for input %d, irq %d\n",
				ds->info->keymap[i].gpio, irq);
			goto err_request_irq_failed;
		}
		FUNC0(irq);
	}
	return 0;

	for (i = ds->info->keymap_size - 1; i >= 0; i--) {
		FUNC1(FUNC2(ds->info->keymap[i].gpio),
			 &ds->key_state[i]);
err_request_irq_failed:
err_gpio_get_irq_num_failed:
		;
	}
	return err;
}