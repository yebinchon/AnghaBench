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
struct t10_vpd {int device_identifier_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int VPD_TMP_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char*) ; 
 int FUNC2 (unsigned char*,char*,...) ; 
 int FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,int) ; 

int FUNC5(
	struct t10_vpd *vpd,
	unsigned char *p_buf,
	int p_buf_len)
{
	unsigned char buf[VPD_TMP_BUF_SIZE];
	int ret = 0;
	int len;

	FUNC0(buf, 0, VPD_TMP_BUF_SIZE);
	len = FUNC2(buf, "T10 VPD Identifier Type: ");

	switch (vpd->device_identifier_type) {
	case 0x00:
		FUNC2(buf+len, "Vendor specific\n");
		break;
	case 0x01:
		FUNC2(buf+len, "T10 Vendor ID based\n");
		break;
	case 0x02:
		FUNC2(buf+len, "EUI-64 based\n");
		break;
	case 0x03:
		FUNC2(buf+len, "NAA\n");
		break;
	case 0x04:
		FUNC2(buf+len, "Relative target port identifier\n");
		break;
	case 0x08:
		FUNC2(buf+len, "SCSI name string\n");
		break;
	default:
		FUNC2(buf+len, "Unsupported: 0x%02x\n",
				vpd->device_identifier_type);
		ret = -EINVAL;
		break;
	}

	if (p_buf) {
		if (p_buf_len < FUNC3(buf)+1)
			return -EINVAL;
		FUNC4(p_buf, buf, p_buf_len);
	} else {
		FUNC1("%s", buf);
	}

	return ret;
}