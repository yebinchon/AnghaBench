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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * platform_devices ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ pnp_registered ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_mpu401_driver ; 
 int /*<<< orphan*/  snd_mpu401_pnp_driver ; 

__attribute__((used)) static void FUNC4(void)
{
	int i;

	if (pnp_registered)
		FUNC3(&snd_mpu401_pnp_driver);
	for (i = 0; i < FUNC0(platform_devices); ++i)
		FUNC1(platform_devices[i]);
	FUNC2(&snd_mpu401_driver);
}