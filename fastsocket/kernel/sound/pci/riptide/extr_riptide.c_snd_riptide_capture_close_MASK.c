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
struct snd_riptide {int /*<<< orphan*/ * capture_substream; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct pcmhw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * private_data; } ;

/* Variables and functions */
 struct pcmhw* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmhw*) ; 
 struct snd_riptide* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct snd_riptide *chip = FUNC2(substream);
	struct pcmhw *data = FUNC0(substream);

	substream->runtime->private_data = NULL;
	chip->capture_substream = NULL;
	FUNC1(data);
	return 0;
}