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
struct rme32 {int /*<<< orphan*/  fullduplex_mode; } ;

/* Variables and functions */
 int FUNC0 (struct snd_pcm_substream*) ; 
 struct rme32* FUNC1 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream)
{
	struct rme32 *rme32 = FUNC1(substream);
	if (! rme32->fullduplex_mode)
		return 0;
	return FUNC0(substream);
}