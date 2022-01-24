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
struct comedi_subdevice {int /*<<< orphan*/  spin_lock; void* lock; scalar_t__ busy; } ;
struct comedi_device {unsigned int n_subdevices; struct comedi_subdevice* subdevices; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC2(void *d, unsigned int subdevice)
{
	struct comedi_device *dev = (struct comedi_device *)d;
	struct comedi_subdevice *s;
	unsigned long flags;
	int ret = 0;

	if (subdevice >= dev->n_subdevices)
		return -EINVAL;

	s = dev->subdevices + subdevice;

	FUNC0(&s->spin_lock, flags);

	if (s->busy) {
		ret = -EBUSY;
	} else {
		if (s->lock) {
			ret = -EBUSY;
		} else {
			s->lock = d;
		}
	}

	FUNC1(&s->spin_lock, flags);

	return ret;
}