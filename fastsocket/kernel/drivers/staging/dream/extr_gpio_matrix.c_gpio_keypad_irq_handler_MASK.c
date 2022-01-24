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
struct gpio_kp {int /*<<< orphan*/  timer; int /*<<< orphan*/  wake_lock; int /*<<< orphan*/  use_irq; struct gpio_event_matrix_info* keypad_info; } ;
struct gpio_event_matrix_info {unsigned int flags; int ninputs; int noutputs; int /*<<< orphan*/ * output_gpios; int /*<<< orphan*/ * input_gpios; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int GPIOKPF_ACTIVE_HIGH ; 
 unsigned int GPIOKPF_DRIVE_INACTIVE ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq_in, void *dev_id)
{
	int i;
	struct gpio_kp *kp = dev_id;
	struct gpio_event_matrix_info *mi = kp->keypad_info;
	unsigned gpio_keypad_flags = mi->flags;

	if (!kp->use_irq) /* ignore interrupt while registering the handler */
		return IRQ_HANDLED;

	for (i = 0; i < mi->ninputs; i++)
		FUNC0(FUNC3(mi->input_gpios[i]));
	for (i = 0; i < mi->noutputs; i++) {
		if (gpio_keypad_flags & GPIOKPF_DRIVE_INACTIVE)
			FUNC2(mi->output_gpios[i],
				!(gpio_keypad_flags & GPIOKPF_ACTIVE_HIGH));
		else
			FUNC1(mi->output_gpios[i]);
	}
	FUNC6(&kp->wake_lock);
	FUNC4(&kp->timer, FUNC5(0, 0), HRTIMER_MODE_REL);
	return IRQ_HANDLED;
}