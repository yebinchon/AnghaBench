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
struct snd_pcm_substream {int number; int stream; TYPE_1__* pcm; } ;
struct azx_dev {int opened; int assigned_key; } ;
struct azx {int playback_index_offset; int playback_streams; int capture_index_offset; int capture_streams; struct azx_dev* azx_dev; } ;
struct TYPE_2__ {int device; } ;

/* Variables and functions */
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (struct azx_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct azx_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct azx_dev*) ; 

__attribute__((used)) static inline struct azx_dev *
FUNC3(struct azx *chip, struct snd_pcm_substream *substream)
{
	int dev, i, nums;
	struct azx_dev *res = NULL;
	/* make a non-zero unique key for the substream */
	int key = (substream->pcm->device << 16) | (substream->number << 2) |
		(substream->stream + 1);

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		dev = chip->playback_index_offset;
		nums = chip->playback_streams;
	} else {
		dev = chip->capture_index_offset;
		nums = chip->capture_streams;
	}
	for (i = 0; i < nums; i++, dev++) {
		struct azx_dev *azx_dev = &chip->azx_dev[dev];
		FUNC1(azx_dev);
		if (!azx_dev->opened && !FUNC0(azx_dev)) {
			res = azx_dev;
			if (res->assigned_key == key) {
				res->opened = 1;
				res->assigned_key = key;
				FUNC2(azx_dev);
				return azx_dev;
			}
		}
		FUNC2(azx_dev);
	}
	if (res) {
		FUNC1(res);
		res->opened = 1;
		res->assigned_key = key;
		FUNC2(res);
	}
	return res;
}