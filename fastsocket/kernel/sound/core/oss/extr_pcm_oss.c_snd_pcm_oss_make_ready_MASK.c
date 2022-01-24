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
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
struct TYPE_2__ {scalar_t__ prepare; scalar_t__ params; } ;
struct snd_pcm_runtime2 {TYPE_1__ oss; } ;

/* Variables and functions */
 struct snd_pcm_runtime2* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_pcm_substream*) ; 
 int FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime2 *runtime;
	int err;

	if (substream == NULL)
		return 0;
	runtime = FUNC0(substream->runtime);
	if (runtime->oss.params) {
		err = FUNC1(substream);
		if (err < 0)
			return err;
	}
	if (runtime->oss.prepare) {
		err = FUNC2(substream);
		if (err < 0)
			return err;
	}
	return 0;
}