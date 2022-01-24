#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct t10_wwn {struct se_device* t10_dev; } ;
struct TYPE_2__ {unsigned char* unit_serial; } ;
struct se_device {int dev_flags; int export_count; TYPE_1__ t10_wwn; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int DF_EMULATED_VPD_UNIT_SERIAL ; 
 int DF_FIRMWARE_VPD_UNIT_SERIAL ; 
 size_t EINVAL ; 
 size_t EOPNOTSUPP ; 
 size_t EOVERFLOW ; 
 int INQUIRY_VPD_SERIAL_LEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int,char*,char const*) ; 
 int FUNC4 (char const*) ; 
 char* FUNC5 (unsigned char*) ; 

__attribute__((used)) static ssize_t FUNC6(
	struct t10_wwn *t10_wwn,
	const char *page,
	size_t count)
{
	struct se_device *dev = t10_wwn->t10_dev;
	unsigned char buf[INQUIRY_VPD_SERIAL_LEN];

	/*
	 * If Linux/SCSI subsystem_api_t plugin got a VPD Unit Serial
	 * from the struct scsi_device level firmware, do not allow
	 * VPD Unit Serial to be emulated.
	 *
	 * Note this struct scsi_device could also be emulating VPD
	 * information from its drivers/scsi LLD.  But for now we assume
	 * it is doing 'the right thing' wrt a world wide unique
	 * VPD Unit Serial Number that OS dependent multipath can depend on.
	 */
	if (dev->dev_flags & DF_FIRMWARE_VPD_UNIT_SERIAL) {
		FUNC2("Underlying SCSI device firmware provided VPD"
			" Unit Serial, ignoring request\n");
		return -EOPNOTSUPP;
	}

	if (FUNC4(page) >= INQUIRY_VPD_SERIAL_LEN) {
		FUNC2("Emulated VPD Unit Serial exceeds"
		" INQUIRY_VPD_SERIAL_LEN: %d\n", INQUIRY_VPD_SERIAL_LEN);
		return -EOVERFLOW;
	}
	/*
	 * Check to see if any active $FABRIC_MOD exports exist.  If they
	 * do exist, fail here as changing this information on the fly
	 * (underneath the initiator side OS dependent multipath code)
	 * could cause negative effects.
	 */
	if (dev->export_count) {
		FUNC2("Unable to set VPD Unit Serial while"
			" active %d $FABRIC_MOD exports exist\n",
			dev->export_count);
		return -EINVAL;
	}

	/*
	 * This currently assumes ASCII encoding for emulated VPD Unit Serial.
	 *
	 * Also, strip any newline added from the userspace
	 * echo $UUID > $TARGET/$HBA/$STORAGE_OBJECT/wwn/vpd_unit_serial
	 */
	FUNC0(buf, 0, INQUIRY_VPD_SERIAL_LEN);
	FUNC3(buf, INQUIRY_VPD_SERIAL_LEN, "%s", page);
	FUNC3(dev->t10_wwn.unit_serial, INQUIRY_VPD_SERIAL_LEN,
			"%s", FUNC5(buf));
	dev->dev_flags |= DF_EMULATED_VPD_UNIT_SERIAL;

	FUNC1("Target_Core_ConfigFS: Set emulated VPD Unit Serial:"
			" %s\n", dev->t10_wwn.unit_serial);

	return count;
}