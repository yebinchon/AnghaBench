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
struct snd_jack {struct snd_jack* id; int /*<<< orphan*/  input_dev; scalar_t__ registered; int /*<<< orphan*/  (* private_free ) (struct snd_jack*) ;} ;
struct snd_device {struct snd_jack* device_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_jack*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_jack*) ; 

__attribute__((used)) static int FUNC4(struct snd_device *device)
{
	struct snd_jack *jack = device->device_data;

	if (jack->private_free)
		jack->private_free(jack);

	/* If the input device is registered with the input subsystem
	 * then we need to use a different deallocator. */
	if (jack->registered)
		FUNC1(jack->input_dev);
	else
		FUNC0(jack->input_dev);

	FUNC2(jack->id);
	FUNC2(jack);

	return 0;
}