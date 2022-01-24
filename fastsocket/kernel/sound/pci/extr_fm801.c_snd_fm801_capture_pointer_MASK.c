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
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
struct fm801 {int cap_ctrl; int cap_pos; int cap_count; size_t cap_size; int /*<<< orphan*/  reg_lock; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_COUNT ; 
 int FM801_IRQ_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (struct fm801*,int /*<<< orphan*/ ) ; 
 int FM801_START ; 
 int /*<<< orphan*/  IRQ_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct fm801* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC6(struct snd_pcm_substream *substream)
{
	struct fm801 *chip = FUNC3(substream);
	size_t ptr;

	if (!(chip->cap_ctrl & FM801_START))
		return 0;
	FUNC4(&chip->reg_lock);
	ptr = chip->cap_pos + (chip->cap_count - 1) - FUNC2(FUNC0(chip, CAP_COUNT));
	if (FUNC2(FUNC0(chip, IRQ_STATUS)) & FM801_IRQ_CAPTURE) {
		ptr += chip->cap_count;
		ptr %= chip->cap_size;
	}
	FUNC5(&chip->reg_lock);
	return FUNC1(substream->runtime, ptr);
}