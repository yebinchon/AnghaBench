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
struct atiixp_modem {int /*<<< orphan*/  open_mutex; int /*<<< orphan*/ * dmas; } ;

/* Variables and functions */
 size_t ATI_DMA_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct snd_pcm_substream*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct atiixp_modem* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct atiixp_modem *chip = FUNC3(substream);
	int err;

	FUNC0(&chip->open_mutex);
	err = FUNC2(substream, &chip->dmas[ATI_DMA_PLAYBACK], 0);
	FUNC1(&chip->open_mutex);
	if (err < 0)
		return err;
	return 0;
}