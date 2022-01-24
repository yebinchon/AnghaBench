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
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
#define  SYS_DOWN 130 
#define  SYS_HALT 129 
#define  SYS_POWER_OFF 128 
 scalar_t__ lcd_enabled ; 
 scalar_t__ lcd_initialized ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static int FUNC1(struct notifier_block *this, unsigned long code,
			    void *unused)
{
	if (lcd_enabled && lcd_initialized) {
		switch (code) {
		case SYS_DOWN:
			FUNC0
			    ("\x0cReloading\nSystem...\x1b[Lc\x1b[Lb\x1b[L+");
			break;
		case SYS_HALT:
			FUNC0
			    ("\x0cSystem Halted.\x1b[Lc\x1b[Lb\x1b[L+");
			break;
		case SYS_POWER_OFF:
			FUNC0("\x0cPower off.\x1b[Lc\x1b[Lb\x1b[L+");
			break;
		default:
			break;
		}
	}
	return NOTIFY_DONE;
}