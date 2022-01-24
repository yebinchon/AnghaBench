#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * buffer; } ;
struct TYPE_8__ {TYPE_1__ oss; } ;
struct TYPE_6__ {scalar_t__ oss; } ;
struct TYPE_7__ {TYPE_2__ oss; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct snd_pcm_runtime*) ; 
 TYPE_3__* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime;
	runtime = substream->runtime;
	FUNC3(FUNC0(runtime)->oss.buffer);
	FUNC0(runtime)->oss.buffer = NULL;
#ifdef CONFIG_SND_PCM_OSS_PLUGINS
	snd_pcm_oss_plugin_clear(substream);
#endif
	FUNC1(substream)->oss.oss = 0;
}