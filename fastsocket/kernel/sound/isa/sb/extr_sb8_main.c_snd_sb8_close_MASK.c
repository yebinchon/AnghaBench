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
struct snd_sb {int /*<<< orphan*/  open_lock; int /*<<< orphan*/  open; int /*<<< orphan*/ * capture_substream; int /*<<< orphan*/ * playback_substream; } ;
struct snd_pcm_substream {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SB_OPEN_PCM ; 
 struct snd_sb* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	unsigned long flags;
	struct snd_sb *chip = FUNC0(substream);

	chip->playback_substream = NULL;
	chip->capture_substream = NULL;
	FUNC1(&chip->open_lock, flags);
	chip->open &= ~SB_OPEN_PCM;
	FUNC2(&chip->open_lock, flags);
	return 0;
}