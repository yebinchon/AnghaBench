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
struct snd_ad1889 {int /*<<< orphan*/ * csubs; } ;

/* Variables and functions */
 struct snd_ad1889* FUNC0 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int
FUNC1(struct snd_pcm_substream *ss)
{
	struct snd_ad1889 *chip = FUNC0(ss);
	chip->csubs = NULL;
	return 0;
}