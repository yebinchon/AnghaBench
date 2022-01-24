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
struct snd_pcm_substream {int /*<<< orphan*/ * proc_prealloc_entry; int /*<<< orphan*/ * proc_prealloc_max_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*) ; 

int FUNC2(struct snd_pcm_substream *substream)
{
	FUNC1(substream);
#ifdef CONFIG_SND_VERBOSE_PROCFS
	snd_info_free_entry(substream->proc_prealloc_max_entry);
	substream->proc_prealloc_max_entry = NULL;
	snd_info_free_entry(substream->proc_prealloc_entry);
	substream->proc_prealloc_entry = NULL;
#endif
	return 0;
}