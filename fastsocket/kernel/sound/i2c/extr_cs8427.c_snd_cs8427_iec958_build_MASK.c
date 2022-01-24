#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {int /*<<< orphan*/  number; TYPE_1__* pcm; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; int /*<<< orphan*/  subdevice; int /*<<< orphan*/  device; } ;
struct snd_kcontrol {TYPE_3__ id; } ;
struct snd_i2c_device {TYPE_2__* bus; struct cs8427* private_data; } ;
struct TYPE_10__ {struct snd_kcontrol* pcm_ctl; struct snd_pcm_substream* substream; } ;
struct TYPE_9__ {struct snd_pcm_substream* substream; } ;
struct cs8427 {TYPE_5__ playback; TYPE_4__ capture; } ;
struct TYPE_7__ {int /*<<< orphan*/  card; } ;
struct TYPE_6__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PCM_STREAM ; 
 int /*<<< orphan*/  PLAYBACK ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * snd_cs8427_iec958_controls ; 
 int FUNC3 (int /*<<< orphan*/ ,struct snd_kcontrol*) ; 
 struct snd_kcontrol* FUNC4 (int /*<<< orphan*/ *,struct snd_i2c_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct snd_i2c_device *cs8427,
			    struct snd_pcm_substream *play_substream,
			    struct snd_pcm_substream *cap_substream)
{
	struct cs8427 *chip = cs8427->private_data;
	struct snd_kcontrol *kctl;
	unsigned int idx;
	int err;

	if (FUNC2(!play_substream || !cap_substream))
		return -EINVAL;
	for (idx = 0; idx < FUNC0(snd_cs8427_iec958_controls); idx++) {
		kctl = FUNC4(&snd_cs8427_iec958_controls[idx], cs8427);
		if (kctl == NULL)
			return -ENOMEM;
		kctl->id.device = play_substream->pcm->device;
		kctl->id.subdevice = play_substream->number;
		err = FUNC3(cs8427->bus->card, kctl);
		if (err < 0)
			return err;
		if (! FUNC5(kctl->id.name,
			     FUNC1("",PLAYBACK,PCM_STREAM)))
			chip->playback.pcm_ctl = kctl;
	}

	chip->playback.substream = play_substream;
	chip->capture.substream = cap_substream;
	if (FUNC2(!chip->playback.pcm_ctl))
		return -EIO;
	return 0;
}