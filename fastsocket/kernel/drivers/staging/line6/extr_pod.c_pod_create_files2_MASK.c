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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_attr_channel ; 
 int /*<<< orphan*/  dev_attr_clip ; 
 int /*<<< orphan*/  dev_attr_device_id ; 
 int /*<<< orphan*/  dev_attr_dirty ; 
 int /*<<< orphan*/  dev_attr_dump ; 
 int /*<<< orphan*/  dev_attr_dump_buf ; 
 int /*<<< orphan*/  dev_attr_finish ; 
 int /*<<< orphan*/  dev_attr_firmware_version ; 
 int /*<<< orphan*/  dev_attr_midi_postprocess ; 
 int /*<<< orphan*/  dev_attr_monitor_level ; 
 int /*<<< orphan*/  dev_attr_name ; 
 int /*<<< orphan*/  dev_attr_name_buf ; 
 int /*<<< orphan*/  dev_attr_raw ; 
 int /*<<< orphan*/  dev_attr_retrieve_amp_setup ; 
 int /*<<< orphan*/  dev_attr_retrieve_channel ; 
 int /*<<< orphan*/  dev_attr_retrieve_effects_setup ; 
 int /*<<< orphan*/  dev_attr_routing ; 
 int /*<<< orphan*/  dev_attr_serial_number ; 
 int /*<<< orphan*/  dev_attr_store_amp_setup ; 
 int /*<<< orphan*/  dev_attr_store_channel ; 
 int /*<<< orphan*/  dev_attr_store_effects_setup ; 
 int /*<<< orphan*/  dev_attr_tuner_freq ; 
 int /*<<< orphan*/  dev_attr_tuner_mute ; 
 int /*<<< orphan*/  dev_attr_tuner_note ; 
 int /*<<< orphan*/  dev_attr_tuner_pitch ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct device *dev)
{
	int err;

	FUNC0(FUNC1(dev, &dev_attr_channel));
	FUNC0(FUNC1(dev, &dev_attr_clip));
	FUNC0(FUNC1(dev, &dev_attr_device_id));
	FUNC0(FUNC1(dev, &dev_attr_dirty));
	FUNC0(FUNC1(dev, &dev_attr_dump));
	FUNC0(FUNC1(dev, &dev_attr_dump_buf));
	FUNC0(FUNC1(dev, &dev_attr_finish));
	FUNC0(FUNC1(dev, &dev_attr_firmware_version));
	FUNC0(FUNC1(dev, &dev_attr_midi_postprocess));
	FUNC0(FUNC1(dev, &dev_attr_monitor_level));
	FUNC0(FUNC1(dev, &dev_attr_name));
	FUNC0(FUNC1(dev, &dev_attr_name_buf));
	FUNC0(FUNC1(dev, &dev_attr_retrieve_amp_setup));
	FUNC0(FUNC1(dev, &dev_attr_retrieve_channel));
	FUNC0(FUNC1(dev, &dev_attr_retrieve_effects_setup));
	FUNC0(FUNC1(dev, &dev_attr_routing));
	FUNC0(FUNC1(dev, &dev_attr_serial_number));
	FUNC0(FUNC1(dev, &dev_attr_store_amp_setup));
	FUNC0(FUNC1(dev, &dev_attr_store_channel));
	FUNC0(FUNC1(dev, &dev_attr_store_effects_setup));
	FUNC0(FUNC1(dev, &dev_attr_tuner_freq));
	FUNC0(FUNC1(dev, &dev_attr_tuner_mute));
	FUNC0(FUNC1(dev, &dev_attr_tuner_note));
	FUNC0(FUNC1(dev, &dev_attr_tuner_pitch));

#if CREATE_RAW_FILE
	CHECK_RETURN(device_create_file(dev, &dev_attr_raw));
#endif

	return 0;
}