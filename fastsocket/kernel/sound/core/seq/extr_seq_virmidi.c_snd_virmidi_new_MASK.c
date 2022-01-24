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
struct snd_virmidi_dev {int device; int client; int /*<<< orphan*/  seq_mode; int /*<<< orphan*/  filelist; int /*<<< orphan*/  filelist_lock; struct snd_rawmidi* rmidi; struct snd_card* card; } ;
struct snd_rawmidi {int info_flags; int /*<<< orphan*/ * ops; int /*<<< orphan*/  private_free; struct snd_virmidi_dev* private_data; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct snd_card {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int SNDRV_RAWMIDI_INFO_DUPLEX ; 
 int SNDRV_RAWMIDI_INFO_INPUT ; 
 int SNDRV_RAWMIDI_INFO_OUTPUT ; 
 int /*<<< orphan*/  SNDRV_RAWMIDI_STREAM_INPUT ; 
 int /*<<< orphan*/  SNDRV_RAWMIDI_STREAM_OUTPUT ; 
 int /*<<< orphan*/  SNDRV_VIRMIDI_SEQ_DISPATCH ; 
 struct snd_virmidi_dev* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_card*,struct snd_rawmidi*) ; 
 int FUNC4 (struct snd_card*,char*,int,int,int,struct snd_rawmidi**) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_rawmidi*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_virmidi_free ; 
 int /*<<< orphan*/  snd_virmidi_global_ops ; 
 int /*<<< orphan*/  snd_virmidi_input_ops ; 
 int /*<<< orphan*/  snd_virmidi_output_ops ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct snd_card *card, int device, struct snd_rawmidi **rrmidi)
{
	struct snd_rawmidi *rmidi;
	struct snd_virmidi_dev *rdev;
	int err;
	
	*rrmidi = NULL;
	if ((err = FUNC4(card, "VirMidi", device,
				   16,	/* may be configurable */
				   16,	/* may be configurable */
				   &rmidi)) < 0)
		return err;
	FUNC6(rmidi->name, rmidi->id);
	rdev = FUNC1(sizeof(*rdev), GFP_KERNEL);
	if (rdev == NULL) {
		FUNC3(card, rmidi);
		return -ENOMEM;
	}
	rdev->card = card;
	rdev->rmidi = rmidi;
	rdev->device = device;
	rdev->client = -1;
	FUNC2(&rdev->filelist_lock);
	FUNC0(&rdev->filelist);
	rdev->seq_mode = SNDRV_VIRMIDI_SEQ_DISPATCH;
	rmidi->private_data = rdev;
	rmidi->private_free = snd_virmidi_free;
	rmidi->ops = &snd_virmidi_global_ops;
	FUNC5(rmidi, SNDRV_RAWMIDI_STREAM_INPUT, &snd_virmidi_input_ops);
	FUNC5(rmidi, SNDRV_RAWMIDI_STREAM_OUTPUT, &snd_virmidi_output_ops);
	rmidi->info_flags = SNDRV_RAWMIDI_INFO_INPUT |
			    SNDRV_RAWMIDI_INFO_OUTPUT |
			    SNDRV_RAWMIDI_INFO_DUPLEX;
	*rrmidi = rmidi;
	return 0;
}