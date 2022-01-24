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
struct comedi_subdevice {void* lock; void* busy; int /*<<< orphan*/ * async; } ;
struct comedi_device {unsigned int n_subdevices; struct comedi_subdevice* subdevices; } ;

/* Variables and functions */
 int EACCES ; 
 int EBUSY ; 
 int EINVAL ; 
 int FUNC0 (struct comedi_device*,struct comedi_subdevice*) ; 

__attribute__((used)) static int FUNC1(struct comedi_device *dev, unsigned int arg,
			   void *file)
{
	struct comedi_subdevice *s;

	if (arg >= dev->n_subdevices)
		return -EINVAL;
	s = dev->subdevices + arg;
	if (s->async == NULL)
		return -EINVAL;

	if (s->lock && s->lock != file)
		return -EACCES;

	if (!s->busy)
		return 0;

	if (s->busy != file)
		return -EBUSY;

	return FUNC0(dev, s);
}