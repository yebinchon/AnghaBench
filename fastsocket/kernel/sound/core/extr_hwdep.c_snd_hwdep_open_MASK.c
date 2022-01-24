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
typedef  int /*<<< orphan*/  wait_queue_t ;
struct TYPE_3__ {int (* open ) (struct snd_hwdep*,struct file*) ;int /*<<< orphan*/  (* release ) (struct snd_hwdep*,struct file*) ;} ;
struct snd_hwdep {scalar_t__ used; TYPE_2__* card; int /*<<< orphan*/  open_mutex; TYPE_1__ ops; int /*<<< orphan*/  open_wait; scalar_t__ exclusive; } ;
struct inode {int dummy; } ;
struct file {int f_flags; struct snd_hwdep* private_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  module; scalar_t__ shutdown; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int EFAULT ; 
 int ENODEV ; 
 int ENXIO ; 
 int ERESTARTSYS ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  SNDRV_DEVICE_TYPE_HWDEP ; 
 int /*<<< orphan*/  SNDRV_OSS_DEVICE_TYPE_DMFM ; 
 int SOUND_MAJOR ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_2__*,struct file*) ; 
 struct snd_hwdep* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_hwdep* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int snd_major ; 
 int FUNC14 (struct snd_hwdep*,struct file*) ; 
 int /*<<< orphan*/  FUNC15 (struct snd_hwdep*,struct file*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct inode *inode, struct file * file)
{
	int major = FUNC1(inode);
	struct snd_hwdep *hw;
	int err;
	wait_queue_t wait;

	if (major == snd_major) {
		hw = FUNC12(FUNC2(inode),
					   SNDRV_DEVICE_TYPE_HWDEP);
#ifdef CONFIG_SND_OSSEMUL
	} else if (major == SOUND_MAJOR) {
		hw = snd_lookup_oss_minor_data(iminor(inode),
					       SNDRV_OSS_DEVICE_TYPE_DMFM);
#endif
	} else
		return -ENXIO;
	if (hw == NULL)
		return -ENODEV;

	if (!FUNC16(hw->card->module))
		return -EFAULT;

	FUNC3(&wait, current);
	FUNC0(&hw->open_wait, &wait);
	FUNC5(&hw->open_mutex);
	while (1) {
		if (hw->exclusive && hw->used > 0) {
			err = -EBUSY;
			break;
		}
		if (!hw->ops.open) {
			err = 0;
			break;
		}
		err = hw->ops.open(hw, file);
		if (err >= 0)
			break;
		if (err == -EAGAIN) {
			if (file->f_flags & O_NONBLOCK) {
				err = -EBUSY;
				break;
			}
		} else
			break;
		FUNC9(TASK_INTERRUPTIBLE);
		FUNC6(&hw->open_mutex);
		FUNC8();
		FUNC5(&hw->open_mutex);
		if (hw->card->shutdown) {
			err = -ENODEV;
			break;
		}
		if (FUNC10(current)) {
			err = -ERESTARTSYS;
			break;
		}
	}
	FUNC7(&hw->open_wait, &wait);
	if (err >= 0) {
		err = FUNC11(hw->card, file);
		if (err >= 0) {
			file->private_data = hw;
			hw->used++;
		} else {
			if (hw->ops.release)
				hw->ops.release(hw, file);
		}
	}
	FUNC6(&hw->open_mutex);
	if (err < 0)
		FUNC4(hw->card->module);
	return err;
}