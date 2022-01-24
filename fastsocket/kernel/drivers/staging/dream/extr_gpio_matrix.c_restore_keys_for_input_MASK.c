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
struct gpio_kp {TYPE_1__* keypad_info; int /*<<< orphan*/  keys_pressed; } ;
struct TYPE_2__ {int ninputs; int noutputs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpio_kp*,int,int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct gpio_kp *kp, int out, int in)
{
	int rv = 0;
	int key_index;

	key_index = out * kp->keypad_info->ninputs + in;
	while (out < kp->keypad_info->noutputs) {
		if (FUNC1(key_index, kp->keys_pressed)) {
			rv = 1;
			FUNC0(kp, out, in);
		}
		key_index += kp->keypad_info->ninputs;
		out++;
	}
	return rv;
}