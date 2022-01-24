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
struct snd_pcm_substream {TYPE_1__* pcm; int /*<<< orphan*/ * private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_line6_pcm {int /*<<< orphan*/  buffer_in; int /*<<< orphan*/  period_in; } ;
struct TYPE_2__ {int /*<<< orphan*/ * private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int LINE6_ISO_BUFFERS ; 
 int LINE6_ISO_PACKETS ; 
 int LINE6_ISO_PACKET_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*) ; 
 int FUNC5 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct snd_line6_pcm* FUNC6 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
				       struct snd_pcm_hw_params *hw_params)
{
	int ret;
	struct snd_line6_pcm *line6pcm = FUNC6(substream);

	/* -- Florian Demski [FD] */
	/* don't ask me why, but this fixes the bug on my machine */
	if (line6pcm == NULL) {
		if (substream->pcm == NULL)
			return -ENOMEM;
		if (substream->pcm->private_data == NULL)
			return -ENOMEM;
		substream->private_data = substream->pcm->private_data;
		line6pcm = FUNC6(substream);
	}
	/* -- [FD] end */

	ret = FUNC5(substream,
				       FUNC2(hw_params));
	if (ret < 0)
		return ret;

	line6pcm->period_in = FUNC3(hw_params);
	line6pcm->buffer_in = FUNC1(LINE6_ISO_BUFFERS * LINE6_ISO_PACKETS * LINE6_ISO_PACKET_SIZE_MAX, GFP_KERNEL);

	if (!line6pcm->buffer_in) {
		FUNC0(FUNC4(substream), "cannot malloc buffer_in\n");
		return -ENOMEM;
	}

	return 0;
}