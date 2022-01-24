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
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_plugin_format {scalar_t__ rate; scalar_t__ format; } ;
struct snd_pcm_plugin {int /*<<< orphan*/  transfer; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  route_transfer ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct snd_pcm_substream*,char*,struct snd_pcm_plugin_format*,struct snd_pcm_plugin_format*,int /*<<< orphan*/ ,struct snd_pcm_plugin**) ; 

int FUNC2(struct snd_pcm_substream *plug,
			       struct snd_pcm_plugin_format *src_format,
			       struct snd_pcm_plugin_format *dst_format,
			       struct snd_pcm_plugin **r_plugin)
{
	struct snd_pcm_plugin *plugin;
	int err;

	if (FUNC0(!r_plugin))
		return -ENXIO;
	*r_plugin = NULL;
	if (FUNC0(src_format->rate != dst_format->rate))
		return -ENXIO;
	if (FUNC0(src_format->format != dst_format->format))
		return -ENXIO;

	err = FUNC1(plug, "route conversion",
				   src_format, dst_format, 0, &plugin);
	if (err < 0)
		return err;

	plugin->transfer = route_transfer;
	*r_plugin = plugin;
	return 0;
}