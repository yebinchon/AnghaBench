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
struct snd_pcm_plugin_channel {int enabled; int /*<<< orphan*/  area; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC1(const struct snd_pcm_plugin_channel *src_channel,
			     struct snd_pcm_plugin_channel *dst_channel,
			     snd_pcm_uframes_t frames, int format)
{
	dst_channel->enabled = 1;
	FUNC0(&src_channel->area, 0, &dst_channel->area, 0, frames, format);
}