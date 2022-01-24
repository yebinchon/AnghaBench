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
struct usb_line6_pod {int /*<<< orphan*/  dumpreq; int /*<<< orphan*/  line6; } ;

/* Variables and functions */
 int POD_amp_model_setup ; 
 int POD_effect_setup ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_line6_pod*,int,int) ; 

void FUNC3(struct usb_line6_pod *pod, int param, int value)
{
	if (FUNC1(&pod->line6, param, value) == 0)
		FUNC2(pod, param, value);

	if ((param == POD_amp_model_setup) || (param == POD_effect_setup))  /* these also affect other settings */
		FUNC0(&pod->dumpreq);
}