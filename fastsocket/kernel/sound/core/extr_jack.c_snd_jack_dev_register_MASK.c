#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_jack {char* id; int registered; TYPE_2__* input_dev; int /*<<< orphan*/  name; } ;
struct snd_device {struct snd_card* card; struct snd_jack* device_data; } ;
struct snd_card {char* shortname; } ;
struct TYPE_3__ {scalar_t__ parent; } ;
struct TYPE_4__ {TYPE_1__ dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,char*,char*) ; 

__attribute__((used)) static int FUNC3(struct snd_device *device)
{
	struct snd_jack *jack = device->device_data;
	struct snd_card *card = device->card;
	int err;

	FUNC2(jack->name, sizeof(jack->name), "%s %s",
		 card->shortname, jack->id);
	jack->input_dev->name = jack->name;

	/* Default to the sound card device. */
	if (!jack->input_dev->dev.parent)
		jack->input_dev->dev.parent = FUNC1(card);

	err = FUNC0(jack->input_dev);
	if (err == 0)
		jack->registered = 1;

	return err;
}