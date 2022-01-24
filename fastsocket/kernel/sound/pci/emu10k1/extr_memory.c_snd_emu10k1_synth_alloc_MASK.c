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
struct snd_util_memhdr {int /*<<< orphan*/  block_mutex; } ;
struct snd_util_memblk {int dummy; } ;
struct snd_emu10k1_memblk {int dummy; } ;
struct snd_emu10k1 {struct snd_util_memhdr* memhdr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct snd_util_memhdr*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_util_memhdr*,struct snd_util_memblk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_emu10k1*,struct snd_emu10k1_memblk*) ; 
 scalar_t__ FUNC5 (struct snd_emu10k1*,struct snd_emu10k1_memblk*) ; 

struct snd_util_memblk *
FUNC6(struct snd_emu10k1 *hw, unsigned int size)
{
	struct snd_emu10k1_memblk *blk;
	struct snd_util_memhdr *hdr = hw->memhdr; 

	FUNC2(&hdr->block_mutex);
	blk = (struct snd_emu10k1_memblk *)FUNC0(hdr, size);
	if (blk == NULL) {
		FUNC3(&hdr->block_mutex);
		return NULL;
	}
	if (FUNC5(hw, blk)) {
		FUNC1(hdr, (struct snd_util_memblk *)blk);
		FUNC3(&hdr->block_mutex);
		return NULL;
	}
	FUNC4(hw, blk);
	FUNC3(&hdr->block_mutex);
	return (struct snd_util_memblk *)blk;
}