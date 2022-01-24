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
struct snd_ice1712 {int /*<<< orphan*/  open_mutex; struct snd_pcm_substream** pcm_reserved; struct snd_pcm_substream** playback_con_substream_ds; struct snd_pcm_substream* playback_pro_substream; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_hw_params*) ; 
 int FUNC5 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct snd_ice1712* FUNC6 (struct snd_pcm_substream*) ; 
 int FUNC7 (struct snd_ice1712*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
				    struct snd_pcm_hw_params *hw_params)
{
	struct snd_ice1712 *ice = FUNC6(substream);
	int i, chs, err;

	chs = FUNC3(hw_params);
	FUNC0(&ice->open_mutex);
	/* mark surround channels */
	if (substream == ice->playback_pro_substream) {
		/* PDMA0 can be multi-channel up to 8 */
		chs = chs / 2 - 1;
		for (i = 0; i < chs; i++) {
			if (ice->pcm_reserved[i] &&
			    ice->pcm_reserved[i] != substream) {
				FUNC1(&ice->open_mutex);
				return -EBUSY;
			}
			ice->pcm_reserved[i] = substream;
		}
		for (; i < 3; i++) {
			if (ice->pcm_reserved[i] == substream)
				ice->pcm_reserved[i] = NULL;
		}
	} else {
		for (i = 0; i < 3; i++) {
			/* check individual playback stream */
			if (ice->playback_con_substream_ds[i] == substream) {
				if (ice->pcm_reserved[i] &&
				    ice->pcm_reserved[i] != substream) {
					FUNC1(&ice->open_mutex);
					return -EBUSY;
				}
				ice->pcm_reserved[i] = substream;
				break;
			}
		}
	}
	FUNC1(&ice->open_mutex);

	err = FUNC7(ice, FUNC4(hw_params), 0);
	if (err < 0)
		return err;

	return FUNC5(substream, FUNC2(hw_params));
}