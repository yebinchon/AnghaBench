#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_rawmidi_file {int dummy; } ;
struct snd_rawmidi {TYPE_1__* card; int /*<<< orphan*/  open_mutex; } ;
struct snd_card {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  module; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct snd_rawmidi*,int,int,struct snd_rawmidi_file*) ; 
 int /*<<< orphan*/  register_mutex ; 
 scalar_t__ FUNC4 (int) ; 
 struct snd_rawmidi* FUNC5 (struct snd_card*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct snd_card *card, int device, int subdevice,
			    int mode, struct snd_rawmidi_file * rfile)
{
	struct snd_rawmidi *rmidi;
	int err;

	if (FUNC4(!rfile))
		return -EINVAL;

	FUNC1(&register_mutex);
	rmidi = FUNC5(card, device);
	if (rmidi == NULL) {
		FUNC2(&register_mutex);
		return -ENODEV;
	}
	if (!FUNC6(rmidi->card->module)) {
		FUNC2(&register_mutex);
		return -ENXIO;
	}
	FUNC2(&register_mutex);

	FUNC1(&rmidi->open_mutex);
	err = FUNC3(rmidi, subdevice, mode, rfile);
	FUNC2(&rmidi->open_mutex);
	if (err < 0)
		FUNC0(rmidi->card->module);
	return err;
}