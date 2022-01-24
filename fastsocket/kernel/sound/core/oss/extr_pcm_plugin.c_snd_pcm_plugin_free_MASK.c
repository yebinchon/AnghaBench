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
struct snd_pcm_plugin {int /*<<< orphan*/  buf; struct snd_pcm_plugin* buf_channels; int /*<<< orphan*/  (* private_free ) (struct snd_pcm_plugin*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_plugin*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_plugin*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct snd_pcm_plugin *plugin)
{
	if (! plugin)
		return 0;
	if (plugin->private_free)
		plugin->private_free(plugin);
	FUNC0(plugin->buf_channels);
	FUNC2(plugin->buf);
	FUNC0(plugin);
	return 0;
}