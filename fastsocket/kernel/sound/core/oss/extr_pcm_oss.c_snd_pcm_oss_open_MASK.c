#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait_queue_t ;
typedef  int /*<<< orphan*/  task_name ;
struct snd_pcm_oss_setup {int dummy; } ;
struct snd_pcm_oss_file {int dummy; } ;
struct snd_pcm {TYPE_1__* card; int /*<<< orphan*/  open_mutex; int /*<<< orphan*/  open_wait; } ;
struct inode {int dummy; } ;
struct file {int f_mode; int f_flags; } ;
typedef  int /*<<< orphan*/  setup ;
struct TYPE_3__ {int /*<<< orphan*/  module; scalar_t__ shutdown; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int EFAULT ; 
 int ENODEV ; 
 int ERESTARTSYS ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  SNDRV_OSS_DEVICE_TYPE_PCM ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_oss_setup*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int nonblock_open ; 
 int FUNC7 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_1__*,struct file*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,struct file*) ; 
 struct snd_pcm* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct snd_pcm*,int /*<<< orphan*/ ,char*,struct snd_pcm_oss_setup*) ; 
 int FUNC16 (struct file*,struct snd_pcm*,struct snd_pcm_oss_file**,int /*<<< orphan*/ ,struct snd_pcm_oss_setup*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct inode *inode, struct file *file)
{
	int err;
	char task_name[32];
	struct snd_pcm *pcm;
	struct snd_pcm_oss_file *pcm_oss_file;
	struct snd_pcm_oss_setup setup[2];
	int nonblock;
	wait_queue_t wait;

	err = FUNC7(inode, file);
	if (err < 0)
		return err;

	pcm = FUNC14(FUNC1(inode),
					SNDRV_OSS_DEVICE_TYPE_PCM);
	if (pcm == NULL) {
		err = -ENODEV;
		goto __error1;
	}
	err = FUNC12(pcm->card, file);
	if (err < 0)
		goto __error1;
	if (!FUNC18(pcm->card->module)) {
		err = -EFAULT;
		goto __error2;
	}
	if (FUNC17(current, task_name, sizeof(task_name)) < 0) {
		err = -EFAULT;
		goto __error;
	}
	FUNC3(setup, 0, sizeof(setup));
	if (file->f_mode & FMODE_WRITE)
		FUNC15(pcm, SNDRV_PCM_STREAM_PLAYBACK,
					   task_name, &setup[0]);
	if (file->f_mode & FMODE_READ)
		FUNC15(pcm, SNDRV_PCM_STREAM_CAPTURE,
					   task_name, &setup[1]);

	nonblock = !!(file->f_flags & O_NONBLOCK);
	if (!nonblock)
		nonblock = nonblock_open;

	FUNC2(&wait, current);
	FUNC0(&pcm->open_wait, &wait);
	FUNC5(&pcm->open_mutex);
	while (1) {
		err = FUNC16(file, pcm, &pcm_oss_file,
					    FUNC1(inode), setup);
		if (err >= 0)
			break;
		if (err == -EAGAIN) {
			if (nonblock) {
				err = -EBUSY;
				break;
			}
		} else
			break;
		FUNC10(TASK_INTERRUPTIBLE);
		FUNC6(&pcm->open_mutex);
		FUNC9();
		FUNC5(&pcm->open_mutex);
		if (pcm->card->shutdown) {
			err = -ENODEV;
			break;
		}
		if (FUNC11(current)) {
			err = -ERESTARTSYS;
			break;
		}
	}
	FUNC8(&pcm->open_wait, &wait);
	FUNC6(&pcm->open_mutex);
	if (err < 0)
		goto __error;
	return err;

      __error:
     	FUNC4(pcm->card->module);
      __error2:
      	FUNC13(pcm->card, file);
      __error1:
	return err;
}