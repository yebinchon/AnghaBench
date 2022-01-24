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
struct msm_audio_stats {int channel_count; int type; int /*<<< orphan*/ * unused; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  buffer_count; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  byte_count; } ;
struct msm_audio_config {int channel_count; int type; int /*<<< orphan*/ * unused; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  buffer_count; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  byte_count; } ;
struct file {struct audio_in* private_data; } ;
struct audio_in {int stopped; int channel_mode; int type; int /*<<< orphan*/  lock; int /*<<< orphan*/  samp_rate; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  samp_rate_index; int /*<<< orphan*/  read_lock; int /*<<< orphan*/  wait; int /*<<< orphan*/  in_bytes; } ;
typedef  int /*<<< orphan*/  stats ;
typedef  int /*<<< orphan*/  cfg ;

/* Variables and functions */
#define  AUDIO_FLUSH 132 
#define  AUDIO_GET_CONFIG 131 
 unsigned int AUDIO_GET_STATS ; 
#define  AUDIO_SET_CONFIG 130 
#define  AUDIO_START 129 
#define  AUDIO_STOP 128 
 int AUDREC_CMD_STEREO_MODE_MONO ; 
 int AUDREC_CMD_STEREO_MODE_STEREO ; 
 int AUDREC_CMD_TYPE_0_INDEX_AAC ; 
 int AUDREC_CMD_TYPE_0_INDEX_WAV ; 
 long EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FRAME_NUM ; 
 int /*<<< orphan*/  MONO_DATA_SIZE ; 
 int /*<<< orphan*/  STEREO_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct audio_in*) ; 
 int FUNC2 (struct audio_in*) ; 
 int FUNC3 (struct audio_in*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct msm_audio_stats*,void*,int) ; 
 scalar_t__ FUNC8 (void*,struct msm_audio_stats*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC12(struct file *file,
				unsigned int cmd, unsigned long arg)
{
	struct audio_in *audio = file->private_data;
	int rc;

	if (cmd == AUDIO_GET_STATS) {
		struct msm_audio_stats stats;
		stats.byte_count = FUNC0(&audio->in_bytes);
		if (FUNC8((void *) arg, &stats, sizeof(stats)))
			return -EFAULT;
		return 0;
	}

	FUNC9(&audio->lock);
	switch (cmd) {
	case AUDIO_START:
		rc = FUNC3(audio);
		break;
	case AUDIO_STOP:
		rc = FUNC2(audio);
		audio->stopped = 1;
		break;
	case AUDIO_FLUSH:
		if (audio->stopped) {
			/* Make sure we're stopped and we wake any threads
			 * that might be blocked holding the read_lock.
			 * While audio->stopped read threads will always
			 * exit immediately.
			 */
			FUNC11(&audio->wait);
			FUNC9(&audio->read_lock);
			FUNC1(audio);
			FUNC10(&audio->read_lock);
		}
	case AUDIO_SET_CONFIG: {
		struct msm_audio_config cfg;
		if (FUNC7(&cfg, (void *) arg, sizeof(cfg))) {
			rc = -EFAULT;
			break;
		}
		if (cfg.channel_count == 1) {
			cfg.channel_count = AUDREC_CMD_STEREO_MODE_MONO;
		} else if (cfg.channel_count == 2) {
			cfg.channel_count = AUDREC_CMD_STEREO_MODE_STEREO;
		} else {
			rc = -EINVAL;
			break;
		}

		if (cfg.type == 0) {
			cfg.type = AUDREC_CMD_TYPE_0_INDEX_WAV;
		} else if (cfg.type == 1) {
			cfg.type = AUDREC_CMD_TYPE_0_INDEX_AAC;
		} else {
			rc = -EINVAL;
			break;
		}
		audio->samp_rate = FUNC6(cfg.sample_rate);
		audio->samp_rate_index =
		  FUNC4(cfg.sample_rate);
		audio->channel_mode = cfg.channel_count;
		audio->buffer_size =
				audio->channel_mode ? STEREO_DATA_SIZE
							: MONO_DATA_SIZE;
		audio->type = cfg.type;
		rc = 0;
		break;
	}
	case AUDIO_GET_CONFIG: {
		struct msm_audio_config cfg;
		cfg.buffer_size = audio->buffer_size;
		cfg.buffer_count = FRAME_NUM;
		cfg.sample_rate = FUNC5(audio->samp_rate);
		if (audio->channel_mode == AUDREC_CMD_STEREO_MODE_MONO)
			cfg.channel_count = 1;
		else
			cfg.channel_count = 2;
		if (audio->type == AUDREC_CMD_TYPE_0_INDEX_WAV)
			cfg.type = 0;
		else
			cfg.type = 1;
		cfg.unused[0] = 0;
		cfg.unused[1] = 0;
		cfg.unused[2] = 0;
		if (FUNC8((void *) arg, &cfg, sizeof(cfg)))
			rc = -EFAULT;
		else
			rc = 0;
		break;
	}
	default:
		rc = -EINVAL;
	}
	FUNC10(&audio->lock);
	return rc;
}