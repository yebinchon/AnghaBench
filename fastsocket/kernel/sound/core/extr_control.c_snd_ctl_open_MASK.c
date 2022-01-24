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
struct snd_ctl_file {int prefer_pcm_subdevice; int prefer_rawmidi_subdevice; int /*<<< orphan*/  list; int /*<<< orphan*/  pid; struct snd_card* card; int /*<<< orphan*/  read_lock; int /*<<< orphan*/  change_sleep; int /*<<< orphan*/  events; } ;
struct snd_card {int /*<<< orphan*/  module; int /*<<< orphan*/  ctl_files_rwlock; int /*<<< orphan*/  ctl_files; } ;
struct inode {int dummy; } ;
struct file {struct snd_ctl_file* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SNDRV_DEVICE_TYPE_CONTROL ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct snd_ctl_file* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,struct file*) ; 
 int FUNC7 (struct snd_card*,struct file*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_card*,struct file*) ; 
 struct snd_card* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC14(struct inode *inode, struct file *file)
{
	unsigned long flags;
	struct snd_card *card;
	struct snd_ctl_file *ctl;
	int err;

	err = FUNC6(inode, file);
	if (err < 0)
		return err;

	card = FUNC9(FUNC1(inode), SNDRV_DEVICE_TYPE_CONTROL);
	if (!card) {
		err = -ENODEV;
		goto __error1;
	}
	err = FUNC7(card, file);
	if (err < 0) {
		err = -ENODEV;
		goto __error1;
	}
	if (!FUNC11(card->module)) {
		err = -EFAULT;
		goto __error2;
	}
	ctl = FUNC3(sizeof(*ctl), GFP_KERNEL);
	if (ctl == NULL) {
		err = -ENOMEM;
		goto __error;
	}
	FUNC0(&ctl->events);
	FUNC2(&ctl->change_sleep);
	FUNC10(&ctl->read_lock);
	ctl->card = card;
	ctl->prefer_pcm_subdevice = -1;
	ctl->prefer_rawmidi_subdevice = -1;
	ctl->pid = current->pid;
	file->private_data = ctl;
	FUNC12(&card->ctl_files_rwlock, flags);
	FUNC4(&ctl->list, &card->ctl_files);
	FUNC13(&card->ctl_files_rwlock, flags);
	return 0;

      __error:
	FUNC5(card->module);
      __error2:
	FUNC8(card, file);
      __error1:
      	return err;
}