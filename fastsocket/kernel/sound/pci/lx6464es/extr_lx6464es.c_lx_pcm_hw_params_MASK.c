#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_4__ {struct snd_pcm_substream* stream; } ;
struct TYPE_3__ {struct snd_pcm_substream* stream; } ;
struct lx6464es {int /*<<< orphan*/  setup_mutex; TYPE_2__ playback_stream; TYPE_1__ capture_stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct lx6464es* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
			    struct snd_pcm_hw_params *hw_params, int is_capture)
{
	struct lx6464es *chip = FUNC4(substream);
	int err = 0;

	FUNC5("->lx_pcm_hw_params\n");

	FUNC0(&chip->setup_mutex);

	/* set dma buffer */
	err = FUNC3(substream,
				       FUNC2(hw_params));

	if (is_capture)
		chip->capture_stream.stream = substream;
	else
		chip->playback_stream.stream = substream;

	FUNC1(&chip->setup_mutex);
	return err;
}