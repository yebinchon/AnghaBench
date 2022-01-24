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
struct comedi_device_file_info {int /*<<< orphan*/  minor; scalar_t__ class_dev; struct comedi_device_file_info* device; } ;
struct comedi_device {int /*<<< orphan*/  minor; scalar_t__ class_dev; struct comedi_device* device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  COMEDI_MAJOR ; 
 unsigned int COMEDI_NUM_BOARD_MINORS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  comedi_class ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device_file_info*) ; 
 struct comedi_device_file_info** comedi_file_info_table ; 
 int /*<<< orphan*/  comedi_file_info_table_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device_file_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(unsigned minor)
{
	unsigned long flags;
	struct comedi_device_file_info *info;

	FUNC0(minor >= COMEDI_NUM_BOARD_MINORS);
	FUNC5(&comedi_file_info_table_lock, flags);
	info = comedi_file_info_table[minor];
	comedi_file_info_table[minor] = NULL;
	FUNC6(&comedi_file_info_table_lock, flags);

	if (info) {
		struct comedi_device *dev = info->device;
		if (dev) {
			if (dev->class_dev) {
				FUNC3(comedi_class,
					       FUNC1(COMEDI_MAJOR, dev->minor));
			}
			FUNC2(dev);
			FUNC4(dev);
		}
		FUNC4(info);
	}
}