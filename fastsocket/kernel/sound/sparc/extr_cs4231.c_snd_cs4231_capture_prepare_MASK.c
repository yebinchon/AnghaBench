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
struct snd_cs4231 {int* image; int /*<<< orphan*/  lock; scalar_t__ c_periods_sent; } ;

/* Variables and functions */
 size_t CS4231_IFACE_CTRL ; 
 int CS4231_RECORD_ENABLE ; 
 int CS4231_RECORD_PIO ; 
 struct snd_cs4231* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct snd_cs4231 *chip = FUNC0(substream);
	unsigned long flags;

	FUNC1(&chip->lock, flags);
	chip->image[CS4231_IFACE_CTRL] &= ~(CS4231_RECORD_ENABLE |
					    CS4231_RECORD_PIO);


	chip->c_periods_sent = 0;
	FUNC2(&chip->lock, flags);

	return 0;
}