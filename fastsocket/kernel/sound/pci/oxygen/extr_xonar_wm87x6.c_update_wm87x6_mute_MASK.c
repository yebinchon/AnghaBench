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
struct oxygen {scalar_t__ dac_mute; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8766_DAC_CTRL2 ; 
 int WM8766_DMUTE_MASK ; 
 int WM8766_ZCD ; 
 int /*<<< orphan*/  FUNC0 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct oxygen *chip)
{
	FUNC0(chip);
	FUNC1(chip, WM8766_DAC_CTRL2, WM8766_ZCD |
			    (chip->dac_mute ? WM8766_DMUTE_MASK : 0));
}