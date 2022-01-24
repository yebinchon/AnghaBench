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
struct snd_pcm_substream {scalar_t__ number; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct echoaudio {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct snd_pcm_substream*,struct snd_pcm_hw_params*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 scalar_t__ FUNC2 (struct echoaudio*) ; 
 struct echoaudio* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
				    struct snd_pcm_hw_params *hw_params)
{
	struct echoaudio *chip = FUNC3(substream);

	return FUNC0(substream, hw_params, FUNC2(chip) +
			substream->number, FUNC1(hw_params));
}