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
struct gpio_kp {TYPE_1__* input_dev; int /*<<< orphan*/  keys_pressed; struct gpio_event_matrix_info* keypad_info; } ;
struct gpio_event_matrix_info {unsigned short* keymap; int flags; int /*<<< orphan*/ * input_gpios; int /*<<< orphan*/ * output_gpios; } ;
struct TYPE_2__ {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int GPIOKPF_PRINT_MAPPED_KEYS ; 
 int GPIOKPF_PRINT_UNMAPPED_KEYS ; 
 unsigned short KEY_RESERVED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned short,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned short,int,int,int /*<<< orphan*/ ,int,...) ; 
 int FUNC2 (unsigned short,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct gpio_kp *kp, int key_index, int out, int in)
{
	struct gpio_event_matrix_info *mi = kp->keypad_info;
	int pressed = FUNC2(key_index, kp->keys_pressed);
	unsigned short keycode = mi->keymap[key_index];
	if (pressed != FUNC2(keycode, kp->input_dev->key)) {
		if (keycode == KEY_RESERVED) {
			if (mi->flags & GPIOKPF_PRINT_UNMAPPED_KEYS)
				FUNC1("gpiomatrix: unmapped key, %d-%d "
					"(%d-%d) changed to %d\n",
					out, in, mi->output_gpios[out],
					mi->input_gpios[in], pressed);
		} else {
			if (mi->flags & GPIOKPF_PRINT_MAPPED_KEYS)
				FUNC1("gpiomatrix: key %x, %d-%d (%d-%d) "
					"changed to %d\n", keycode,
					out, in, mi->output_gpios[out],
					mi->input_gpios[in], pressed);
			FUNC0(kp->input_dev, keycode, pressed);
		}
	}
}