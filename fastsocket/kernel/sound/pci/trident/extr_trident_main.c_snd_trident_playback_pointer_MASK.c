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
struct snd_trident_voice {int /*<<< orphan*/  number; int /*<<< orphan*/  running; } ;
struct snd_trident {scalar_t__ device; int /*<<< orphan*/  reg_lock; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned int buffer_size; struct snd_trident_voice* private_data; } ;
typedef  unsigned int snd_pcm_uframes_t ;

/* Variables and functions */
 scalar_t__ CH_DX_CSO_ALPHA_FMS ; 
 scalar_t__ CH_NX_DELTA_CSO ; 
 scalar_t__ T4D_LFO_GC_CIR ; 
 scalar_t__ TRIDENT_DEVICE_ID_NX ; 
 int /*<<< orphan*/  FUNC0 (struct snd_trident*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_trident* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC7(struct snd_pcm_substream *substream)
{
	struct snd_trident *trident = FUNC4(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_trident_voice *voice = runtime->private_data;
	unsigned int cso;

	if (!voice->running)
		return 0;

	FUNC5(&trident->reg_lock);

	FUNC3(voice->number, FUNC0(trident, T4D_LFO_GC_CIR));

	if (trident->device != TRIDENT_DEVICE_ID_NX) {
		cso = FUNC2(FUNC0(trident, CH_DX_CSO_ALPHA_FMS + 2));
	} else {		// ID_4DWAVE_NX
		cso = (unsigned int) FUNC1(FUNC0(trident, CH_NX_DELTA_CSO)) & 0x00ffffff;
	}

	FUNC6(&trident->reg_lock);

	if (cso >= runtime->buffer_size)
		cso = 0;

	return cso;
}