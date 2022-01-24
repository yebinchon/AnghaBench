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
struct usb_serial {int /*<<< orphan*/  kref; int /*<<< orphan*/  disc_mutex; scalar_t__ disconnected; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct usb_serial** serial_table ; 
 int /*<<< orphan*/  table_lock ; 

struct usb_serial *FUNC3(unsigned index)
{
	struct usb_serial *serial;

	FUNC1(&table_lock);
	serial = serial_table[index];

	if (serial) {
		FUNC1(&serial->disc_mutex);
		if (serial->disconnected) {
			FUNC2(&serial->disc_mutex);
			serial = NULL;
		} else {
			FUNC0(&serial->kref);
		}
	}
	FUNC2(&table_lock);
	return serial;
}