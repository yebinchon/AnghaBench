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
struct echoaudio {int meters_enabled; TYPE_1__* comm_page; } ;
typedef  int /*<<< orphan*/  s8 ;
struct TYPE_2__ {scalar_t__ peak_meter; scalar_t__ vu_meter; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_MAXPIPES ; 
 int /*<<< orphan*/  DSP_VC_METERS_OFF ; 
 int /*<<< orphan*/  DSP_VC_METERS_ON ; 
 int /*<<< orphan*/  ECHOGAIN_MUTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct echoaudio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct echoaudio *chip, char on)
{
	if (on && !chip->meters_enabled) {
		FUNC1(chip, DSP_VC_METERS_ON);
		chip->meters_enabled = 1;
	} else if (!on && chip->meters_enabled) {
		FUNC1(chip, DSP_VC_METERS_OFF);
		chip->meters_enabled = 0;
		FUNC0((s8 *)chip->comm_page->vu_meter, ECHOGAIN_MUTED,
		       DSP_MAXPIPES);
		FUNC0((s8 *)chip->comm_page->peak_meter, ECHOGAIN_MUTED,
		       DSP_MAXPIPES);
	}
}