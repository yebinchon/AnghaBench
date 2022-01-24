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
struct audmgr_config {int /*<<< orphan*/  snd_method; int /*<<< orphan*/  codec; int /*<<< orphan*/  def_method; int /*<<< orphan*/  rx_rate; int /*<<< orphan*/  tx_rate; } ;
struct audio {int enabled; int /*<<< orphan*/  audmgr; scalar_t__ out_needed; scalar_t__ out_tail; TYPE_1__* out; } ;
struct TYPE_2__ {int /*<<< orphan*/  used; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  PWRSINK_AUDIO ; 
 int /*<<< orphan*/  RPC_AUD_DEF_CODEC_PCM ; 
 int /*<<< orphan*/  RPC_AUD_DEF_METHOD_HOST_PCM ; 
 int /*<<< orphan*/  RPC_AUD_DEF_SAMPLE_RATE_48000 ; 
 int /*<<< orphan*/  RPC_AUD_DEF_SAMPLE_RATE_NONE ; 
 int /*<<< orphan*/  RPC_SND_METHOD_MIDI ; 
 int /*<<< orphan*/  FUNC0 (struct audio*) ; 
 int /*<<< orphan*/  audio_dsp_event ; 
 int /*<<< orphan*/  FUNC1 (struct audio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct audmgr_config*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,struct audio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct audio *audio)
{
	struct audmgr_config cfg;
	int rc;

	FUNC7("audio_enable()\n");

	if (audio->enabled)
		return 0;

	/* refuse to start if we're not ready */
	if (!audio->out[0].used || !audio->out[1].used)
		return -EIO;

	/* we start buffers 0 and 1, so buffer 0 will be the
	 * next one the dsp will want
	 */
	audio->out_tail = 0;
	audio->out_needed = 0;

	cfg.tx_rate = RPC_AUD_DEF_SAMPLE_RATE_NONE;
	cfg.rx_rate = RPC_AUD_DEF_SAMPLE_RATE_48000;
	cfg.def_method = RPC_AUD_DEF_METHOD_HOST_PCM;
	cfg.codec = RPC_AUD_DEF_CODEC_PCM;
	cfg.snd_method = RPC_SND_METHOD_MIDI;

	FUNC1(audio);
	rc = FUNC3(&audio->audmgr, &cfg);
	if (rc < 0) {
		FUNC0(audio);
		return rc;
	}

	if (FUNC4(-1, audio_dsp_event, audio)) {
		FUNC6("audio: audpp_enable() failed\n");
		FUNC2(&audio->audmgr);
		FUNC0(audio);
		return -ENODEV;
	}

	audio->enabled = 1;
	FUNC5(PWRSINK_AUDIO, 100);
	return 0;
}