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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int brightness; scalar_t__ power; scalar_t__ fb_blank; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAC_LCD_BRIGHTNESS ; 
 scalar_t__ FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  HD64461_GPBDR ; 
 int /*<<< orphan*/  HD64461_GPBDR_LCDOFF ; 
 int /*<<< orphan*/  bl_lock ; 
 int current_intensity ; 
 scalar_t__ hp680bl_suspended ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct backlight_device *bd)
{
	unsigned long flags;
	u16 v;
	int intensity = bd->props.brightness;

	if (bd->props.power != FB_BLANK_UNBLANK)
		intensity = 0;
	if (bd->props.fb_blank != FB_BLANK_UNBLANK)
		intensity = 0;
	if (hp680bl_suspended)
		intensity = 0;

	FUNC5(&bl_lock, flags);
	if (intensity && current_intensity == 0) {
		FUNC3(DAC_LCD_BRIGHTNESS);
		v = FUNC0(HD64461_GPBDR);
		v &= ~HD64461_GPBDR_LCDOFF;
		FUNC1(v, HD64461_GPBDR);
		FUNC4(255-(u8)intensity, DAC_LCD_BRIGHTNESS);
	} else if (intensity == 0 && current_intensity != 0) {
		FUNC4(255-(u8)intensity, DAC_LCD_BRIGHTNESS);
		FUNC2(DAC_LCD_BRIGHTNESS);
		v = FUNC0(HD64461_GPBDR);
		v |= HD64461_GPBDR_LCDOFF;
		FUNC1(v, HD64461_GPBDR);
	} else if (intensity) {
		FUNC4(255-(u8)intensity, DAC_LCD_BRIGHTNESS);
	}
	FUNC6(&bl_lock, flags);

	current_intensity = intensity;
}