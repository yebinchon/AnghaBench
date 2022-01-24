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
struct usb_line6_pod {int channel_num; int /*<<< orphan*/  dumpreq; int /*<<< orphan*/  line6; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(struct usb_line6_pod *pod, int value)
{
	FUNC1(&pod->dumpreq);

	if (FUNC2(&pod->line6, value) == 0)
		pod->channel_num = value;
	else
		FUNC0(&pod->dumpreq);
}