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
struct snd_pcm_file {int dummy; } ;
struct snd_pcm {TYPE_1__* card; int /*<<< orphan*/  open_mutex; int /*<<< orphan*/  open_wait; } ;
struct file {int f_flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  module; scalar_t__ shutdown; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int EFAULT ; 
 int ENODEV ; 
 int ERESTARTSYS ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*,struct file*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,struct file*) ; 
 int FUNC11 (struct file*,struct snd_pcm*,int,struct snd_pcm_file**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct file *file, struct snd_pcm *pcm, int stream)
{
	int err;
	struct snd_pcm_file *pcm_file;
	wait_queue_t wait;

	if (pcm == NULL) {
		err = -ENODEV;
		goto __error1;
	}
	err = FUNC9(pcm->card, file);
	if (err < 0)
		goto __error1;
	if (!FUNC12(pcm->card->module)) {
		err = -EFAULT;
		goto __error2;
	}
	FUNC1(&wait, current);
	FUNC0(&pcm->open_wait, &wait);
	FUNC3(&pcm->open_mutex);
	while (1) {
		err = FUNC11(file, pcm, stream, &pcm_file);
		if (err >= 0)
			break;
		if (err == -EAGAIN) {
			if (file->f_flags & O_NONBLOCK) {
				err = -EBUSY;
				break;
			}
		} else
			break;
		FUNC7(TASK_INTERRUPTIBLE);
		FUNC4(&pcm->open_mutex);
		FUNC6();
		FUNC3(&pcm->open_mutex);
		if (pcm->card->shutdown) {
			err = -ENODEV;
			break;
		}
		if (FUNC8(current)) {
			err = -ERESTARTSYS;
			break;
		}
	}
	FUNC5(&pcm->open_wait, &wait);
	FUNC4(&pcm->open_mutex);
	if (err < 0)
		goto __error;
	return err;

      __error:
	FUNC2(pcm->card->module);
      __error2:
      	FUNC10(pcm->card, file);
      __error1:
      	return err;
}