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
struct iio_interrupt {int /*<<< orphan*/  ev_list; int /*<<< orphan*/  ev_list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct iio_interrupt* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct iio_interrupt *FUNC3(void)
{
	struct iio_interrupt *i = FUNC1(sizeof *i, GFP_KERNEL);
	if (i) {
		FUNC2(&i->ev_list_lock);
		FUNC0(&i->ev_list);
	}
	return i;
}