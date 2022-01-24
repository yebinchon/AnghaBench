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
struct snd_seq_device {int /*<<< orphan*/  (* private_free ) (struct snd_seq_device*) ;int /*<<< orphan*/  list; int /*<<< orphan*/  id; } ;
struct ops_list {int /*<<< orphan*/  reg_mutex; int /*<<< orphan*/  num_devices; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 struct ops_list* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_seq_device*,struct ops_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_seq_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_seq_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ops_list*) ; 

__attribute__((used)) static int FUNC9(struct snd_seq_device *dev)
{
	struct ops_list *ops;

	if (FUNC6(!dev))
		return -EINVAL;

	ops = FUNC0(dev->id, 0);
	if (ops == NULL)
		return -ENXIO;

	/* remove the device from the list */
	FUNC4(&ops->reg_mutex);
	FUNC3(&dev->list);
	ops->num_devices--;
	FUNC5(&ops->reg_mutex);

	FUNC1(dev, ops);
	if (dev->private_free)
		dev->private_free(dev);
	FUNC2(dev);

	FUNC8(ops);

	return 0;
}