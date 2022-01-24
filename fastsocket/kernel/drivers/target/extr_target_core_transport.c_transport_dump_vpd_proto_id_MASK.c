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
struct t10_vpd {int protocol_identifier; } ;

/* Variables and functions */
 int VPD_TMP_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char*) ; 
 int FUNC2 (unsigned char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 

void FUNC4(
	struct t10_vpd *vpd,
	unsigned char *p_buf,
	int p_buf_len)
{
	unsigned char buf[VPD_TMP_BUF_SIZE];
	int len;

	FUNC0(buf, 0, VPD_TMP_BUF_SIZE);
	len = FUNC2(buf, "T10 VPD Protocol Identifier: ");

	switch (vpd->protocol_identifier) {
	case 0x00:
		FUNC2(buf+len, "Fibre Channel\n");
		break;
	case 0x10:
		FUNC2(buf+len, "Parallel SCSI\n");
		break;
	case 0x20:
		FUNC2(buf+len, "SSA\n");
		break;
	case 0x30:
		FUNC2(buf+len, "IEEE 1394\n");
		break;
	case 0x40:
		FUNC2(buf+len, "SCSI Remote Direct Memory Access"
				" Protocol\n");
		break;
	case 0x50:
		FUNC2(buf+len, "Internet SCSI (iSCSI)\n");
		break;
	case 0x60:
		FUNC2(buf+len, "SAS Serial SCSI Protocol\n");
		break;
	case 0x70:
		FUNC2(buf+len, "Automation/Drive Interface Transport"
				" Protocol\n");
		break;
	case 0x80:
		FUNC2(buf+len, "AT Attachment Interface ATA/ATAPI\n");
		break;
	default:
		FUNC2(buf+len, "Unknown 0x%02x\n",
				vpd->protocol_identifier);
		break;
	}

	if (p_buf)
		FUNC3(p_buf, buf, p_buf_len);
	else
		FUNC1("%s", buf);
}