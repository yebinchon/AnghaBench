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
struct TYPE_3__ {int /*<<< orphan*/ * class; int /*<<< orphan*/ * type; } ;
struct iio_trigger {int /*<<< orphan*/  pollfunc_list; int /*<<< orphan*/  list; int /*<<< orphan*/  pollfunc_list_lock; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  iio_class ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  iio_trig_type ; 
 struct iio_trigger* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct iio_trigger *FUNC6(void)
{
	struct iio_trigger *trig;
	trig = FUNC4(sizeof *trig, GFP_KERNEL);
	if (trig) {
		trig->dev.type = &iio_trig_type;
		trig->dev.class = &iio_class;
		FUNC2(&trig->dev);
		FUNC1(&trig->dev, (void *)trig);
		FUNC5(&trig->pollfunc_list_lock);
		FUNC0(&trig->list);
		FUNC0(&trig->pollfunc_list);
		FUNC3();
	}
	return trig;
}