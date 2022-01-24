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
struct snd_mixer_oss_file {int /*<<< orphan*/ * mixer; struct snd_card* card; } ;
struct snd_card {int /*<<< orphan*/  module; } ;
struct inode {int dummy; } ;
struct file {struct snd_mixer_oss_file* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/ * mixer_oss; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_OSS_DEVICE_TYPE_MIXER ; 
 TYPE_1__* FUNC0 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_mixer_oss_file*) ; 
 struct snd_mixer_oss_file* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,struct file*) ; 
 int FUNC5 (struct snd_card*,struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_card*,struct file*) ; 
 struct snd_card* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *file)
{
	struct snd_card *card;
	struct snd_mixer_oss_file *fmixer;
	int err;

	err = FUNC4(inode, file);
	if (err < 0)
		return err;

	card = FUNC7(FUNC1(inode),
					 SNDRV_OSS_DEVICE_TYPE_MIXER);
	if (card == NULL)
		return -ENODEV;
	if (FUNC0(card)->mixer_oss == NULL)
		return -ENODEV;
	err = FUNC5(card, file);
	if (err < 0)
		return err;
	fmixer = FUNC3(sizeof(*fmixer), GFP_KERNEL);
	if (fmixer == NULL) {
		FUNC6(card, file);
		return -ENOMEM;
	}
	fmixer->card = card;
	fmixer->mixer = FUNC0(card)->mixer_oss;
	file->private_data = fmixer;
	if (!FUNC8(card->module)) {
		FUNC2(fmixer);
		FUNC6(card, file);
		return -EFAULT;
	}
	return 0;
}