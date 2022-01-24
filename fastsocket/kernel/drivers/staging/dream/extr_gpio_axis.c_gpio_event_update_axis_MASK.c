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
typedef  int uint16_t ;
struct gpio_event_axis_info {int count; int (* map ) (struct gpio_event_axis_info*,int) ;int flags; scalar_t__ type; int decoded_size; int /*<<< orphan*/  code; int /*<<< orphan*/ * gpio; } ;
struct gpio_axis_state {int pos; int /*<<< orphan*/  input_dev; struct gpio_event_axis_info* info; } ;

/* Variables and functions */
 scalar_t__ EV_REL ; 
 int GPIOEAF_PRINT_EVENT ; 
 int GPIOEAF_PRINT_RAW ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,int /*<<< orphan*/ ,int,...) ; 
 int FUNC5 (struct gpio_event_axis_info*,int) ; 

__attribute__((used)) static void FUNC6(struct gpio_axis_state *as, int report)
{
	struct gpio_event_axis_info *ai = as->info;
	int i;
	int change;
	uint16_t state = 0;
	uint16_t pos;
	uint16_t old_pos = as->pos;
	for (i = ai->count - 1; i >= 0; i--)
		state = (state << 1) | FUNC0(ai->gpio[i]);
	pos = ai->map(ai, state);
	if (ai->flags & GPIOEAF_PRINT_RAW)
		FUNC4("axis %d-%d raw %x, pos %d -> %d\n",
			ai->type, ai->code, state, old_pos, pos);
	if (report && pos != old_pos) {
		if (ai->type == EV_REL) {
			change = (ai->decoded_size + pos - old_pos) %
				  ai->decoded_size;
			if (change > ai->decoded_size / 2)
				change -= ai->decoded_size;
			if (change == ai->decoded_size / 2) {
				if (ai->flags & GPIOEAF_PRINT_EVENT)
					FUNC4("axis %d-%d unknown direction, "
						"pos %d -> %d\n", ai->type,
						ai->code, old_pos, pos);
				change = 0; /* no closest direction */
			}
			if (ai->flags & GPIOEAF_PRINT_EVENT)
				FUNC4("axis %d-%d change %d\n",
					ai->type, ai->code, change);
			FUNC2(as->input_dev, ai->code, change);
		} else {
			if (ai->flags & GPIOEAF_PRINT_EVENT)
				FUNC4("axis %d-%d now %d\n",
					ai->type, ai->code, pos);
			FUNC1(as->input_dev, ai->type, ai->code, pos);
		}
		FUNC3(as->input_dev);
	}
	as->pos = pos;
}