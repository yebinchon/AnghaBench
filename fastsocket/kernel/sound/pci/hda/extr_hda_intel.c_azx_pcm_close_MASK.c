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
struct snd_pcm_substream {size_t stream; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (struct hda_pcm_stream*,int /*<<< orphan*/ ,struct snd_pcm_substream*) ;} ;
struct hda_pcm_stream {TYPE_1__ ops; } ;
struct azx_pcm {int /*<<< orphan*/  codec; struct azx* chip; struct hda_pcm_stream** hinfo; } ;
struct azx_dev {scalar_t__ running; int /*<<< orphan*/ * substream; } ;
struct azx {int /*<<< orphan*/  open_mutex; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct azx_dev*) ; 
 struct azx_dev* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct azx_pcm* FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct hda_pcm_stream*,int /*<<< orphan*/ ,struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream)
{
	struct azx_pcm *apcm = FUNC5(substream);
	struct hda_pcm_stream *hinfo = apcm->hinfo[substream->stream];
	struct azx *chip = apcm->chip;
	struct azx_dev *azx_dev = FUNC1(substream);
	unsigned long flags;

	FUNC2(&chip->open_mutex);
	FUNC6(&chip->reg_lock, flags);
	azx_dev->substream = NULL;
	azx_dev->running = 0;
	FUNC7(&chip->reg_lock, flags);
	FUNC0(azx_dev);
	hinfo->ops.close(hinfo, apcm->codec, substream);
	FUNC4(apcm->codec);
	FUNC3(&chip->open_mutex);
	return 0;
}