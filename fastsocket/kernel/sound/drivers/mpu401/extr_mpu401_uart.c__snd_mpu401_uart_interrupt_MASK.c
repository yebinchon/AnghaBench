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
struct snd_mpu401 {int info_flags; int /*<<< orphan*/  input_lock; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int MPU401_INFO_INPUT ; 
 int MPU401_INFO_TX_IRQ ; 
 int /*<<< orphan*/  MPU401_MODE_BIT_INPUT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_mpu401*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_mpu401*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_mpu401*) ; 

__attribute__((used)) static void FUNC6(struct snd_mpu401 *mpu)
{
	unsigned long flags;

	if (mpu->info_flags & MPU401_INFO_INPUT) {
		FUNC2(&mpu->input_lock, flags);
		if (FUNC4(MPU401_MODE_BIT_INPUT, &mpu->mode))
			FUNC1(mpu);
		else
			FUNC0(mpu);
		FUNC3(&mpu->input_lock, flags);
	}
	if (! (mpu->info_flags & MPU401_INFO_TX_IRQ))
		/* ok. for better Tx performance try do some output
		   when input is done */
		FUNC5(mpu);
}