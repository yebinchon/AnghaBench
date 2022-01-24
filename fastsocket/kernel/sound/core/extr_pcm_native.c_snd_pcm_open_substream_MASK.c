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
struct snd_pcm_substream {int ref_count; int hw_opened; TYPE_1__* ops; } ;
struct snd_pcm {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int (* open ) (struct snd_pcm_substream*) ;} ;

/* Variables and functions */
 int FUNC0 (struct snd_pcm*,int,struct file*,struct snd_pcm_substream**) ; 
 int FUNC1 (struct snd_pcm_substream*) ; 
 int FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (struct snd_pcm_substream*) ; 

int FUNC6(struct snd_pcm *pcm, int stream,
			   struct file *file,
			   struct snd_pcm_substream **rsubstream)
{
	struct snd_pcm_substream *substream;
	int err;

	err = FUNC0(pcm, stream, file, &substream);
	if (err < 0)
		return err;
	if (substream->ref_count > 1) {
		*rsubstream = substream;
		return 0;
	}

	err = FUNC2(substream);
	if (err < 0) {
		FUNC4("snd_pcm_hw_constraints_init failed\n");
		goto error;
	}

	if ((err = substream->ops->open(substream)) < 0)
		goto error;

	substream->hw_opened = 1;

	err = FUNC1(substream);
	if (err < 0) {
		FUNC4("snd_pcm_hw_constraints_complete failed\n");
		goto error;
	}

	*rsubstream = substream;
	return 0;

 error:
	FUNC3(substream);
	return err;
}