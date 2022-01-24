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
struct hdsp {int /*<<< orphan*/  control_register; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDSP_AnalogExtensionBoard ; 
 int /*<<< orphan*/  HDSP_controlRegister ; 
 int /*<<< orphan*/  FUNC0 (struct hdsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct hdsp *hdsp, int mode)
{
	if (mode)
		hdsp->control_register |= HDSP_AnalogExtensionBoard;
	else
		hdsp->control_register &= ~HDSP_AnalogExtensionBoard;
	FUNC0(hdsp, HDSP_controlRegister, hdsp->control_register);
	return 0;
}