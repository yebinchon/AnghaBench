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
struct snd_minor {int type; void* private_data; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct snd_minor**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct snd_minor** snd_minors ; 
 int /*<<< orphan*/  sound_mutex ; 

void *FUNC3(unsigned int minor, int type)
{
	struct snd_minor *mreg;
	void *private_data;

	if (minor >= FUNC0(snd_minors))
		return NULL;
	FUNC1(&sound_mutex);
	mreg = snd_minors[minor];
	if (mreg && mreg->type == type)
		private_data = mreg->private_data;
	else
		private_data = NULL;
	FUNC2(&sound_mutex);
	return private_data;
}