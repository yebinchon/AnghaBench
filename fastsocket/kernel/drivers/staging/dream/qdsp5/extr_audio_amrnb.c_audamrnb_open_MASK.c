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
struct inode {int dummy; } ;
struct file {struct audio* private_data; } ;
struct audio {int opened; int phys; int volume; int /*<<< orphan*/  lock; TYPE_1__* out; int /*<<< orphan*/ * data; scalar_t__ dec_id; int /*<<< orphan*/  audmgr; int /*<<< orphan*/  audplay; } ;
struct TYPE_2__ {int addr; int size; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int BUFSZ ; 
 int /*<<< orphan*/  DMASZ ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct audio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  audplay_adsp_ops_amrnb ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct audio*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 struct audio the_amrnb_audio ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *file)
{
	struct audio *audio = &the_amrnb_audio;
	int rc;

	FUNC6(&audio->lock);

	if (audio->opened) {
		FUNC8("audio: busy\n");
		rc = -EBUSY;
		goto done;
	}

	if (!audio->data) {
		audio->data = FUNC3(NULL, DMASZ,
						 &audio->phys, GFP_KERNEL);
		if (!audio->data) {
			FUNC8("audio: could not allocate DMA buffers\n");
			rc = -ENOMEM;
			goto done;
		}
	}

	rc = FUNC2(&audio->audmgr);
	if (rc)
		goto done;

	rc = FUNC5("AUDPLAY0TASK", &audio->audplay,
		&audplay_adsp_ops_amrnb, audio);
	if (rc) {
		FUNC8("audio: failed to get audplay0 dsp module\n");
		FUNC1(&audio->audmgr);
		FUNC4(NULL, DMASZ, audio->data, audio->phys);
		audio->data = NULL;
		goto done;
	}

	audio->dec_id = 0;

	audio->out[0].data = audio->data + 0;
	audio->out[0].addr = audio->phys + 0;
	audio->out[0].size = BUFSZ;

	audio->out[1].data = audio->data + BUFSZ;
	audio->out[1].addr = audio->phys + BUFSZ;
	audio->out[1].size = BUFSZ;

	audio->volume = 0x2000;	/* Q13 1.0 */

	FUNC0(audio);

	file->private_data = audio;
	audio->opened = 1;
	rc = 0;
done:
	FUNC7(&audio->lock);
	return rc;
}