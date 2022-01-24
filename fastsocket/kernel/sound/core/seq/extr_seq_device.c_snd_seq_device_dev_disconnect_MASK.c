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
struct snd_seq_device {int /*<<< orphan*/  id; } ;
struct snd_device {struct snd_seq_device* device_data; } ;
struct ops_list {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct ops_list* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_seq_device*,struct ops_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct ops_list*) ; 

__attribute__((used)) static int FUNC3(struct snd_device *device)
{
	struct snd_seq_device *dev = device->device_data;
	struct ops_list *ops;

	ops = FUNC0(dev->id, 0);
	if (ops == NULL)
		return -ENOENT;

	FUNC1(dev, ops);

	FUNC2(ops);
	return 0;
}