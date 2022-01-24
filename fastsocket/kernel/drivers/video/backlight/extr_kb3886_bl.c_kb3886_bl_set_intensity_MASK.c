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
 int KB3886_ADC_DAC_PWM ; 
 int /*<<< orphan*/  KB3886_IO ; 
 int /*<<< orphan*/  KB3886_PARENT ; 
 int KB3886_PWM0_WRITE ; 
 int /*<<< orphan*/  bl_mutex ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(int intensity)
{
	FUNC1(&bl_mutex);
	intensity = intensity&0xff;
	FUNC3(KB3886_ADC_DAC_PWM, KB3886_PARENT);
	FUNC0(10);
	FUNC3(KB3886_PWM0_WRITE, KB3886_IO);
	FUNC0(10);
	FUNC3(intensity, KB3886_IO);
	FUNC2(&bl_mutex);
}