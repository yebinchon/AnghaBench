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
struct snd_pcm_plugin_channel {scalar_t__ enabled; int /*<<< orphan*/  area; scalar_t__ wanted; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct snd_pcm_plugin_channel *dvp, int ndsts,
		       snd_pcm_uframes_t frames, int format)
{
	int dst = 0;
	for (; dst < ndsts; ++dst) {
		if (dvp->wanted)
			FUNC0(&dvp->area, 0, frames, format);
		dvp->enabled = 0;
		dvp++;
	}
}