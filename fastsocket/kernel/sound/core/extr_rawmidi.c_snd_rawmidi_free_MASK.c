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
struct snd_rawmidi {int /*<<< orphan*/  (* private_free ) (struct snd_rawmidi*) ;int /*<<< orphan*/ * streams; TYPE_1__* ops; int /*<<< orphan*/ * proc_entry; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* dev_unregister ) (struct snd_rawmidi*) ;} ;

/* Variables and functions */
 size_t SNDRV_RAWMIDI_STREAM_INPUT ; 
 size_t SNDRV_RAWMIDI_STREAM_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_rawmidi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  register_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_rawmidi*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_rawmidi*) ; 

__attribute__((used)) static int FUNC7(struct snd_rawmidi *rmidi)
{
	if (!rmidi)
		return 0;

	FUNC3(rmidi->proc_entry);
	rmidi->proc_entry = NULL;
	FUNC1(&register_mutex);
	if (rmidi->ops && rmidi->ops->dev_unregister)
		rmidi->ops->dev_unregister(rmidi);
	FUNC2(&register_mutex);

	FUNC4(&rmidi->streams[SNDRV_RAWMIDI_STREAM_INPUT]);
	FUNC4(&rmidi->streams[SNDRV_RAWMIDI_STREAM_OUTPUT]);
	if (rmidi->private_free)
		rmidi->private_free(rmidi);
	FUNC0(rmidi);
	return 0;
}