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
struct zorro_driver {int (* probe ) (struct zorro_dev*,struct zorro_device_id const*) ;int /*<<< orphan*/  id_table; } ;
struct zorro_device_id {int dummy; } ;
struct zorro_dev {struct zorro_driver* driver; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int FUNC0 (struct zorro_dev*,struct zorro_device_id const*) ; 
 struct zorro_dev* FUNC1 (struct device*) ; 
 struct zorro_driver* FUNC2 (int /*<<< orphan*/ ) ; 
 struct zorro_device_id* FUNC3 (int /*<<< orphan*/ ,struct zorro_dev*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	int error = 0;
	struct zorro_driver *drv = FUNC2(dev->driver);
	struct zorro_dev *z = FUNC1(dev);

	if (!z->driver && drv->probe) {
		const struct zorro_device_id *id;

		id = FUNC3(drv->id_table, z);
		if (id)
			error = drv->probe(z, id);
		if (error >= 0) {
			z->driver = drv;
			error = 0;
		}
	}
	return error;
}