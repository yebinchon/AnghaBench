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
struct inode {int dummy; } ;
struct file {struct audio_in* private_data; } ;
struct audio_in {int opened; int /*<<< orphan*/  lock; scalar_t__ stopped; scalar_t__ dsp_cnt; int /*<<< orphan*/  audrec; int /*<<< orphan*/  audpre; int /*<<< orphan*/  audmgr; int /*<<< orphan*/  type; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  channel_mode; int /*<<< orphan*/  samp_rate_index; int /*<<< orphan*/  samp_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDREC_CMD_SAMP_RATE_INDX_11025 ; 
 int /*<<< orphan*/  AUDREC_CMD_STEREO_MODE_MONO ; 
 int /*<<< orphan*/  AUDREC_CMD_TYPE_0_INDEX_WAV ; 
 int EBUSY ; 
 int /*<<< orphan*/  MONO_DATA_SIZE ; 
 int /*<<< orphan*/  RPC_AUD_DEF_SAMPLE_RATE_11025 ; 
 int /*<<< orphan*/  FUNC0 (struct audio_in*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  audpre_adsp_ops ; 
 int /*<<< orphan*/  audrec_adsp_ops ; 
 int FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct audio_in*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct audio_in the_audio_in ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct audio_in *audio = &the_audio_in;
	int rc;

	FUNC3(&audio->lock);
	if (audio->opened) {
		rc = -EBUSY;
		goto done;
	}

	/* Settings will be re-config at AUDIO_SET_CONFIG,
	 * but at least we need to have initial config
	 */
	audio->samp_rate = RPC_AUD_DEF_SAMPLE_RATE_11025;
	audio->samp_rate_index = AUDREC_CMD_SAMP_RATE_INDX_11025;
	audio->channel_mode = AUDREC_CMD_STEREO_MODE_MONO;
	audio->buffer_size = MONO_DATA_SIZE;
	audio->type = AUDREC_CMD_TYPE_0_INDEX_WAV;

	rc = FUNC1(&audio->audmgr);
	if (rc)
		goto done;
	rc = FUNC2("AUDPREPROCTASK", &audio->audpre,
				&audpre_adsp_ops, audio);
	if (rc)
		goto done;
	rc = FUNC2("AUDRECTASK", &audio->audrec,
			   &audrec_adsp_ops, audio);
	if (rc)
		goto done;

	audio->dsp_cnt = 0;
	audio->stopped = 0;

	FUNC0(audio);

	file->private_data = audio;
	audio->opened = 1;
	rc = 0;
done:
	FUNC4(&audio->lock);
	return rc;
}