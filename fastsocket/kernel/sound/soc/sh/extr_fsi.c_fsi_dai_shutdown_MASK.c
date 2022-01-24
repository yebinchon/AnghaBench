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
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct fsi_priv {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fsi_priv*,int /*<<< orphan*/ ) ; 
 struct fsi_priv* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsi_priv*,int) ; 
 TYPE_1__* master ; 

__attribute__((used)) static void FUNC4(struct snd_pcm_substream *substream,
			     struct snd_soc_dai *dai)
{
	struct fsi_priv *fsi = FUNC2(substream);
	int is_play = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;

	FUNC3(fsi, is_play);
	FUNC1(fsi, 0);

	FUNC0(master->clk);
}