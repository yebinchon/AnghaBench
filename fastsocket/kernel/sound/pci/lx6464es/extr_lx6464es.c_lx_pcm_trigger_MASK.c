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
struct snd_pcm_substream {int /*<<< orphan*/  stream; } ;
struct lx_stream {int dummy; } ;
struct lx6464es {struct lx_stream playback_stream; struct lx_stream capture_stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int FUNC0 (struct lx6464es*,struct lx_stream*,int) ; 
 struct lx6464es* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream, int cmd)
{
	struct lx6464es *chip = FUNC1(substream);
	const int is_capture = (substream->stream == SNDRV_PCM_STREAM_CAPTURE);
	struct lx_stream *stream = is_capture ? &chip->capture_stream :
		&chip->playback_stream;

	FUNC2("->lx_pcm_trigger\n");

	return FUNC0(chip, stream, cmd);
}