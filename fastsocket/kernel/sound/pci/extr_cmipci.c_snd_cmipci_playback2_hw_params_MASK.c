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
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct cmipci {int /*<<< orphan*/  open_mutex; scalar_t__* opened; } ;

/* Variables and functions */
 size_t CM_CH_PLAY ; 
 scalar_t__ CM_OPEN_PLAYBACK_MULTI ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct cmipci* FUNC5 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
					  struct snd_pcm_hw_params *hw_params)
{
	struct cmipci *cm = FUNC5(substream);
	if (FUNC3(hw_params) > 2) {
		FUNC0(&cm->open_mutex);
		if (cm->opened[CM_CH_PLAY]) {
			FUNC1(&cm->open_mutex);
			return -EBUSY;
		}
		/* reserve the channel A */
		cm->opened[CM_CH_PLAY] = CM_OPEN_PLAYBACK_MULTI;
		FUNC1(&cm->open_mutex);
	}
	return FUNC4(substream, FUNC2(hw_params));
}