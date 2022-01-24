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
struct snd_i2c_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  next; } ;
struct snd_i2c_bus {int /*<<< orphan*/  (* private_free ) (struct snd_i2c_bus*) ;int /*<<< orphan*/  card; TYPE_1__ buses; scalar_t__ master; TYPE_1__ devices; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_i2c_bus*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct snd_i2c_bus*) ; 
 struct snd_i2c_device* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_i2c_device*) ; 
 struct snd_i2c_bus* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_i2c_bus*) ; 

__attribute__((used)) static int FUNC9(struct snd_i2c_bus *bus)
{
	struct snd_i2c_bus *slave;
	struct snd_i2c_device *device;

	if (FUNC3(!bus))
		return -EINVAL;
	while (!FUNC2(&bus->devices)) {
		device = FUNC5(bus->devices.next);
		FUNC6(device);
	}
	if (bus->master)
		FUNC1(&bus->buses);
	else {
		while (!FUNC2(&bus->buses)) {
			slave = FUNC7(bus->buses.next);
			FUNC4(bus->card, slave);
		}
	}
	if (bus->private_free)
		bus->private_free(bus);
	FUNC0(bus);
	return 0;
}