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

/* Variables and functions */
 int /*<<< orphan*/  DSP_PCM_MAIN_CHANNEL ; 
 int FUNC0 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream)
{
	FUNC1("open front channel\n");
	return FUNC0(substream,DSP_PCM_MAIN_CHANNEL);
}