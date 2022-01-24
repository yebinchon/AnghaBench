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
struct comedi_subdevice {size_t minor; int /*<<< orphan*/ * class_dev; } ;
struct comedi_device_file_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t COMEDI_FIRST_SUBDEVICE_MINOR ; 
 int /*<<< orphan*/  COMEDI_MAJOR ; 
 size_t COMEDI_NUM_MINORS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  comedi_class ; 
 struct comedi_device_file_info** comedi_file_info_table ; 
 int /*<<< orphan*/  comedi_file_info_table_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device_file_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct comedi_subdevice *s)
{
	unsigned long flags;
	struct comedi_device_file_info *info;

	if (s == NULL)
		return;
	if (s->minor < 0)
		return;

	FUNC0(s->minor >= COMEDI_NUM_MINORS);
	FUNC0(s->minor < COMEDI_FIRST_SUBDEVICE_MINOR);

	FUNC4(&comedi_file_info_table_lock, flags);
	info = comedi_file_info_table[s->minor];
	comedi_file_info_table[s->minor] = NULL;
	FUNC5(&comedi_file_info_table_lock, flags);

	if (s->class_dev) {
		FUNC2(comedi_class, FUNC1(COMEDI_MAJOR, s->minor));
		s->class_dev = NULL;
	}
	FUNC3(info);
}