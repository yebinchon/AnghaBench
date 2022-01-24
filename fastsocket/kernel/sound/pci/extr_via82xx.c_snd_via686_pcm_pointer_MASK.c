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
struct TYPE_3__ {scalar_t__ addr; } ;
struct viadev {unsigned int tbl_entries; unsigned int lastpos; TYPE_1__ table; } ;
struct via82xx {int /*<<< orphan*/  reg_lock; } ;
struct snd_pcm_substream {TYPE_2__* runtime; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;
struct TYPE_4__ {struct viadev* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  OFFSET_CURR_COUNT ; 
 int /*<<< orphan*/  OFFSET_CURR_PTR ; 
 int /*<<< orphan*/  OFFSET_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct viadev*,int /*<<< orphan*/ ) ; 
 int VIA_REG_STAT_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,unsigned int) ; 
 unsigned int FUNC2 (struct viadev*,unsigned int,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 struct via82xx* FUNC6 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC9(struct snd_pcm_substream *substream)
{
	struct via82xx *chip = FUNC6(substream);
	struct viadev *viadev = substream->runtime->private_data;
	unsigned int idx, ptr, count, res;

	if (FUNC5(!viadev->tbl_entries))
		return 0;
	if (!(FUNC3(FUNC0(viadev, OFFSET_STATUS)) & VIA_REG_STAT_ACTIVE))
		return 0;

	FUNC7(&chip->reg_lock);
	count = FUNC4(FUNC0(viadev, OFFSET_CURR_COUNT)) & 0xffffff;
	/* The via686a does not have the current index register,
	 * so we need to calculate the index from CURR_PTR.
	 */
	ptr = FUNC4(FUNC0(viadev, OFFSET_CURR_PTR));
	if (ptr <= (unsigned int)viadev->table.addr)
		idx = 0;
	else /* CURR_PTR holds the address + 8 */
		idx = ((ptr - (unsigned int)viadev->table.addr) / 8 - 1) % viadev->tbl_entries;
	res = FUNC2(viadev, idx, count);
	viadev->lastpos = res; /* remember the last position */
	FUNC8(&chip->reg_lock);

	return FUNC1(substream->runtime, res);
}