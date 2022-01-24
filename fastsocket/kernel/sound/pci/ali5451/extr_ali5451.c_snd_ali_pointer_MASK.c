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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_ali_voice* private_data; } ;
struct snd_ali_voice {int /*<<< orphan*/  number; int /*<<< orphan*/  running; } ;
struct snd_ali {int /*<<< orphan*/  reg_lock; } ;
typedef  unsigned int snd_pcm_uframes_t ;

/* Variables and functions */
 scalar_t__ ALI_CSO_ALPHA_FMS ; 
 scalar_t__ ALI_GC_CIR ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ali*,scalar_t__) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_ali* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC7(struct snd_pcm_substream *substream)
{
	struct snd_ali *codec = FUNC3(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_ali_voice *pvoice = runtime->private_data;
	unsigned int cso;

	FUNC4(&codec->reg_lock);
	if (!pvoice->running) {
		FUNC6(&codec->reg_lock);
		return 0;
	}
	FUNC2(pvoice->number, FUNC0(codec, ALI_GC_CIR));
	cso = FUNC1(FUNC0(codec, ALI_CSO_ALPHA_FMS + 2));
	FUNC5(&codec->reg_lock);

	return cso;
}