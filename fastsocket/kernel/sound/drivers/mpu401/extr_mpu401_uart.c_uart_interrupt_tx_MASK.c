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
struct snd_mpu401 {int /*<<< orphan*/  output_lock; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPU401_MODE_BIT_OUTPUT ; 
 int /*<<< orphan*/  MPU401_MODE_BIT_OUTPUT_TRIGGER ; 
 int /*<<< orphan*/  FUNC0 (struct snd_mpu401*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct snd_mpu401 *mpu)
{
	unsigned long flags;

	if (FUNC3(MPU401_MODE_BIT_OUTPUT, &mpu->mode) &&
	    FUNC3(MPU401_MODE_BIT_OUTPUT_TRIGGER, &mpu->mode)) {
		FUNC1(&mpu->output_lock, flags);
		FUNC0(mpu);
		FUNC2(&mpu->output_lock, flags);
	}
}