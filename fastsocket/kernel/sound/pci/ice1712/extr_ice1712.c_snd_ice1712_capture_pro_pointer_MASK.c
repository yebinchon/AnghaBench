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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_ice1712 {int capture_pro_size; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;
struct TYPE_2__ {size_t buffer_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAPTURE_SIZE ; 
 int ICE1712_CAPTURE_START_SHADOW ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLAYBACK_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct snd_ice1712* FUNC4 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC5(struct snd_pcm_substream *substream)
{
	struct snd_ice1712 *ice = FUNC4(substream);
	size_t ptr;

	if (!(FUNC2(FUNC0(ice, PLAYBACK_CONTROL)) & ICE1712_CAPTURE_START_SHADOW))
		return 0;
	ptr = ice->capture_pro_size - (FUNC3(FUNC0(ice, CAPTURE_SIZE)) << 2);
	if (ptr == substream->runtime->buffer_size)
		ptr = 0;
	return FUNC1(substream->runtime, ptr);
}