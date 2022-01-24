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
struct comedi_device_file_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int COMEDI_NUM_MINORS ; 
 struct comedi_device_file_info** comedi_file_info_table ; 
 int /*<<< orphan*/  comedi_file_info_table_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

struct comedi_device_file_info *FUNC3(unsigned minor)
{
	unsigned long flags;
	struct comedi_device_file_info *info;

	FUNC0(minor >= COMEDI_NUM_MINORS);
	FUNC1(&comedi_file_info_table_lock, flags);
	info = comedi_file_info_table[minor];
	FUNC2(&comedi_file_info_table_lock, flags);
	return info;
}