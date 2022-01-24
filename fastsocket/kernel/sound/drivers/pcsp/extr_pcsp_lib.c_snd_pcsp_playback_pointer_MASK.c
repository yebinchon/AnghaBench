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
struct snd_pcsp {unsigned int playback_ptr; int /*<<< orphan*/  substream_lock; } ;
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 struct snd_pcsp* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC4(struct snd_pcm_substream
						   *substream)
{
	struct snd_pcsp *chip = FUNC1(substream);
	unsigned int pos;
	FUNC2(&chip->substream_lock);
	pos = chip->playback_ptr;
	FUNC3(&chip->substream_lock);
	return FUNC0(substream->runtime, pos);
}