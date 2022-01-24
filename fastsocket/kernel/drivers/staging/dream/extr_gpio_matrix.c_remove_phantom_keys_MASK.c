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
struct gpio_kp {int some_keys_pressed; int /*<<< orphan*/  keys_pressed; TYPE_1__* keypad_info; } ;
struct TYPE_2__ {int noutputs; int ninputs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpio_kp*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_kp*,int,int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct gpio_kp *kp)
{
	int out, in, inp;
	int key_index;

	if (kp->some_keys_pressed < 3)
		return;

	for (out = 0; out < kp->keypad_info->noutputs; out++) {
		inp = -1;
		key_index = out * kp->keypad_info->ninputs;
		for (in = 0; in < kp->keypad_info->ninputs; in++, key_index++) {
			if (FUNC2(key_index, kp->keys_pressed)) {
				if (inp == -1) {
					inp = in;
					continue;
				}
				if (inp >= 0) {
					if (!FUNC1(kp, out + 1,
									inp))
						break;
					FUNC0(kp, out, inp);
					inp = -2;
				}
				FUNC1(kp, out, in);
			}
		}
	}
}