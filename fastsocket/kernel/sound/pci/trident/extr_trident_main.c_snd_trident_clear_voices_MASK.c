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
struct snd_trident {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  T4D_AINTEN_A ; 
 int /*<<< orphan*/  T4D_AINTEN_B ; 
 int /*<<< orphan*/  T4D_STOP_A ; 
 int /*<<< orphan*/  T4D_STOP_B ; 
 int /*<<< orphan*/  FUNC0 (struct snd_trident*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct snd_trident * trident, unsigned short v_min, unsigned short v_max)
{
	unsigned int i, val, mask[2] = { 0, 0 };

	if (FUNC3(v_min > 63 || v_max > 63))
		return;
	for (i = v_min; i <= v_max; i++)
		mask[i >> 5] |= 1 << (i & 0x1f);
	if (mask[0]) {
		FUNC2(mask[0], FUNC0(trident, T4D_STOP_A));
		val = FUNC1(FUNC0(trident, T4D_AINTEN_A));
		FUNC2(val & ~mask[0], FUNC0(trident, T4D_AINTEN_A));
	}
	if (mask[1]) {
		FUNC2(mask[1], FUNC0(trident, T4D_STOP_B));
		val = FUNC1(FUNC0(trident, T4D_AINTEN_B));
		FUNC2(val & ~mask[1], FUNC0(trident, T4D_AINTEN_B));
	}
}