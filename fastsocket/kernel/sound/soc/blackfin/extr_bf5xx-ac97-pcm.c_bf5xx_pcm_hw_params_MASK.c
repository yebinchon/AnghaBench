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
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct ac97_frame {int dummy; } ;
struct TYPE_2__ {int buffer_bytes_max; } ;

/* Variables and functions */
 TYPE_1__ bf5xx_pcm_hardware ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_substream*,size_t) ; 

__attribute__((used)) static int FUNC1(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params)
{
	size_t size = bf5xx_pcm_hardware.buffer_bytes_max
			* sizeof(struct ac97_frame) / 4;

	FUNC0(substream, size);

	return 0;
}