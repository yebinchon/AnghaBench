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
struct usb_line6_pod {int /*<<< orphan*/  param_dirty; } ;

/* Variables and functions */
 int POD_CONTROL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct usb_line6_pod *pod)
{
	int i;

	for (i = 0; i < POD_CONTROL_SIZE; i++)
		FUNC0(i, pod->param_dirty);
}