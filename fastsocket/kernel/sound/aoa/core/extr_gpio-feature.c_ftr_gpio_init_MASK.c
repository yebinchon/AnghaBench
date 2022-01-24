#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  work; } ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  work; } ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  work; } ;
struct gpio_runtime {TYPE_3__ line_out_notify; TYPE_2__ line_in_notify; TYPE_1__ headphone_notify; scalar_t__ implementation_private; } ;
struct TYPE_8__ {int /*<<< orphan*/  get_master; int /*<<< orphan*/  set_master; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  amp_mute_gpio ; 
 int /*<<< orphan*/  amp_mute_gpio_activestate ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_runtime*) ; 
 int /*<<< orphan*/  ftr_gpio_get_master ; 
 int /*<<< orphan*/  ftr_gpio_set_master ; 
 int /*<<< orphan*/  ftr_handle_notify ; 
 scalar_t__ FUNC2 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  headphone_detect_gpio ; 
 int /*<<< orphan*/  headphone_detect_gpio_activestate ; 
 int /*<<< orphan*/  headphone_detect_irq ; 
 scalar_t__ headphone_detect_node ; 
 int /*<<< orphan*/  headphone_mute_gpio ; 
 int /*<<< orphan*/  headphone_mute_gpio_activestate ; 
 int /*<<< orphan*/  hw_reset_gpio ; 
 int /*<<< orphan*/  hw_reset_gpio_activestate ; 
 int /*<<< orphan*/  linein_detect_gpio ; 
 int /*<<< orphan*/  linein_detect_gpio_activestate ; 
 int /*<<< orphan*/  linein_detect_irq ; 
 scalar_t__ linein_detect_node ; 
 int /*<<< orphan*/  lineout_detect_gpio ; 
 int /*<<< orphan*/  lineout_detect_gpio_activestate ; 
 int /*<<< orphan*/  lineout_detect_irq ; 
 scalar_t__ lineout_detect_node ; 
 int /*<<< orphan*/  lineout_mute_gpio ; 
 int /*<<< orphan*/  lineout_mute_gpio_activestate ; 
 int /*<<< orphan*/  master_mute_gpio ; 
 int /*<<< orphan*/  master_mute_gpio_activestate ; 
 TYPE_4__ methods ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct gpio_runtime *rt)
{
	FUNC2("headphone-mute", NULL,
		 &headphone_mute_gpio,
		 &headphone_mute_gpio_activestate);
	FUNC2("amp-mute", NULL,
		 &amp_mute_gpio,
		 &amp_mute_gpio_activestate);
	FUNC2("lineout-mute", NULL,
		 &lineout_mute_gpio,
		 &lineout_mute_gpio_activestate);
	FUNC2("hw-reset", "audio-hw-reset",
		 &hw_reset_gpio,
		 &hw_reset_gpio_activestate);
	if (FUNC2("master-mute", NULL,
		     &master_mute_gpio,
		     &master_mute_gpio_activestate)) {
		methods.set_master = ftr_gpio_set_master;
		methods.get_master = ftr_gpio_get_master;
	}

	headphone_detect_node = FUNC2("headphone-detect", NULL,
					 &headphone_detect_gpio,
					 &headphone_detect_gpio_activestate);
	/* go Apple, and thanks for giving these different names
	 * across the board... */
	lineout_detect_node = FUNC2("lineout-detect", "line-output-detect",
				       &lineout_detect_gpio,
				       &lineout_detect_gpio_activestate);
	linein_detect_node = FUNC2("linein-detect", "line-input-detect",
				      &linein_detect_gpio,
				      &linein_detect_gpio_activestate);

	FUNC4(headphone_detect_gpio);
	FUNC4(lineout_detect_gpio);
	FUNC4(linein_detect_gpio);

	FUNC3(headphone_detect_node, &headphone_detect_irq);
	FUNC3(lineout_detect_node, &lineout_detect_irq);
	FUNC3(linein_detect_node, &linein_detect_irq);

	FUNC1(rt);
	rt->implementation_private = 0;
	FUNC0(&rt->headphone_notify.work, ftr_handle_notify);
	FUNC0(&rt->line_in_notify.work, ftr_handle_notify);
	FUNC0(&rt->line_out_notify.work, ftr_handle_notify);
	FUNC5(&rt->headphone_notify.mutex);
	FUNC5(&rt->line_in_notify.mutex);
	FUNC5(&rt->line_out_notify.mutex);
}