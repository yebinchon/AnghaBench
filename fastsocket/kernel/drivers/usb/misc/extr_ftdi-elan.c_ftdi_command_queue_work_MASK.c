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
struct usb_ftdi {int /*<<< orphan*/  kref; int /*<<< orphan*/  command_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  command_queue ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct usb_ftdi *ftdi, unsigned int delta)
{
	if (FUNC1(command_queue, &ftdi->command_work, delta))
		FUNC0(&ftdi->kref);
}