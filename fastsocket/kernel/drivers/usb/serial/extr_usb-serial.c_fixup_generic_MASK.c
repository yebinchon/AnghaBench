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
struct usb_serial_driver {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  chars_in_buffer ; 
 int /*<<< orphan*/  close ; 
 int /*<<< orphan*/  disconnect ; 
 int /*<<< orphan*/  open ; 
 int /*<<< orphan*/  read_bulk_callback ; 
 int /*<<< orphan*/  release ; 
 int /*<<< orphan*/  FUNC0 (struct usb_serial_driver*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write ; 
 int /*<<< orphan*/  write_bulk_callback ; 
 int /*<<< orphan*/  write_room ; 

__attribute__((used)) static void FUNC1(struct usb_serial_driver *device)
{
	FUNC0(device, open);
	FUNC0(device, write);
	FUNC0(device, close);
	FUNC0(device, write_room);
	FUNC0(device, chars_in_buffer);
	FUNC0(device, read_bulk_callback);
	FUNC0(device, write_bulk_callback);
	FUNC0(device, disconnect);
	FUNC0(device, release);
}