#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nvidia_par {int fpSyncs; int /*<<< orphan*/  PRAMDAC; int /*<<< orphan*/  PMC; int /*<<< orphan*/  PCRTC0; int /*<<< orphan*/  FlatPanel; } ;
struct TYPE_2__ {scalar_t__ power; scalar_t__ fb_blank; int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 scalar_t__ FB_BLANK_UNBLANK ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 struct nvidia_par* FUNC2 (struct backlight_device*) ; 
 int FUNC3 (struct nvidia_par*,int) ; 

__attribute__((used)) static int FUNC4(struct backlight_device *bd)
{
	struct nvidia_par *par = FUNC2(bd);
	u32 tmp_pcrt, tmp_pmc, fpcontrol;
	int level;

	if (!par->FlatPanel)
		return 0;

	if (bd->props.power != FB_BLANK_UNBLANK ||
	    bd->props.fb_blank != FB_BLANK_UNBLANK)
		level = 0;
	else
		level = bd->props.brightness;

	tmp_pmc = FUNC0(par->PMC, 0x10F0) & 0x0000FFFF;
	tmp_pcrt = FUNC0(par->PCRTC0, 0x081C) & 0xFFFFFFFC;
	fpcontrol = FUNC0(par->PRAMDAC, 0x0848) & 0xCFFFFFCC;

	if (level > 0) {
		tmp_pcrt |= 0x1;
		tmp_pmc |= (1 << 31); /* backlight bit */
		tmp_pmc |= FUNC3(par, level) << 16;
		fpcontrol |= par->fpSyncs;
	} else
		fpcontrol |= 0x20000022;

	FUNC1(par->PCRTC0, 0x081C, tmp_pcrt);
	FUNC1(par->PMC, 0x10F0, tmp_pmc);
	FUNC1(par->PRAMDAC, 0x848, fpcontrol);

	return 0;
}