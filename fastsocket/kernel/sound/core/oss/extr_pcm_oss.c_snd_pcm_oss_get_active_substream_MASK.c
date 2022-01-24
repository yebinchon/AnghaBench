#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
struct snd_pcm_oss_file {struct snd_pcm_substream** streams; } ;
struct TYPE_3__ {scalar_t__ params; } ;
struct TYPE_4__ {TYPE_1__ oss; } ;

/* Variables and functions */
 int EIO ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_oss_file *pcm_oss_file, struct snd_pcm_substream **r_substream)
{
	int idx, err;
	struct snd_pcm_substream *asubstream = NULL, *substream;

	for (idx = 0; idx < 2; idx++) {
		substream = pcm_oss_file->streams[idx];
		if (substream == NULL)
			continue;
		if (asubstream == NULL)
			asubstream = substream;
		if (FUNC0(substream->runtime)->oss.params) {
			err = FUNC1(substream);
			if (err < 0)
				return err;
		}
	}
	if (!asubstream)
		return -EIO;
	if (r_substream)
		*r_substream = asubstream;
	return 0;
}