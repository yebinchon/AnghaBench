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
struct snd_soc_dapm_widget {int connected; int /*<<< orphan*/  list; int /*<<< orphan*/  sinks; int /*<<< orphan*/  sources; struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int /*<<< orphan*/  dapm_widgets; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct snd_soc_dapm_widget* FUNC1 (struct snd_soc_dapm_widget const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(struct snd_soc_codec *codec,
	const struct snd_soc_dapm_widget *widget)
{
	struct snd_soc_dapm_widget *w;

	if ((w = FUNC1(widget)) == NULL)
		return -ENOMEM;

	w->codec = codec;
	FUNC0(&w->sources);
	FUNC0(&w->sinks);
	FUNC0(&w->list);
	FUNC2(&w->list, &codec->dapm_widgets);

	/* machine layer set ups unconnected pins and insertions */
	w->connected = 1;
	return 0;
}