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
struct rme32 {scalar_t__ iobase; int /*<<< orphan*/  playback_frlog; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 scalar_t__ RME32_IO_DATA_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rme32* FUNC1 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream, int channel,	/* not used (interleaved data) */
				      snd_pcm_uframes_t pos,
				      snd_pcm_uframes_t count)
{
	struct rme32 *rme32 = FUNC1(substream);
	count <<= rme32->playback_frlog;
	pos <<= rme32->playback_frlog;
	FUNC0(rme32->iobase + RME32_IO_DATA_BUFFER + pos, 0, count);
	return 0;
}