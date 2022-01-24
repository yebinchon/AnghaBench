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
struct irq_devres {unsigned int irq; void* dev_id; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_irq_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct irq_devres*) ; 
 struct irq_devres* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_devres*) ; 
 int FUNC3 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,char const*,void*) ; 

int FUNC4(struct device *dev, unsigned int irq,
			      irq_handler_t handler, irq_handler_t thread_fn,
			      unsigned long irqflags, const char *devname,
			      void *dev_id)
{
	struct irq_devres *dr;
	int rc;

	dr = FUNC1(devm_irq_release, sizeof(struct irq_devres),
			  GFP_KERNEL);
	if (!dr)
		return -ENOMEM;

	rc = FUNC3(irq, handler, thread_fn, irqflags, devname,
				  dev_id);
	if (rc) {
		FUNC2(dr);
		return rc;
	}

	dr->irq = irq;
	dr->dev_id = dev_id;
	FUNC0(dev, dr);

	return 0;
}