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
typedef  int /*<<< orphan*/  sb_devc ;

/* Variables and functions */
 int /*<<< orphan*/  MONO_DAC ; 
 int /*<<< orphan*/  OUT_FILTER ; 
 int /*<<< orphan*/  STEREO_DAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(sb_devc * devc, int mode)
{
	FUNC0(devc, OUT_FILTER, STEREO_DAC, (mode ? STEREO_DAC : MONO_DAC));
}