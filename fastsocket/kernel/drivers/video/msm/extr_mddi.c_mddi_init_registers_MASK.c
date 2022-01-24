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
typedef  int uint16_t ;
struct mddi_info {int /*<<< orphan*/  client_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPS ; 
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  CORE_VER ; 
 int /*<<< orphan*/  DISP_WAKE ; 
 int /*<<< orphan*/  DRIVER_START_CNT ; 
 int /*<<< orphan*/  DRIVE_HI ; 
 int /*<<< orphan*/  DRIVE_LO ; 
 int MDDI_CMD_DISP_IGNORE ; 
 int MDDI_CMD_PERIODIC_REV_ENCAP ; 
 int MDDI_HOST_BYTES_PER_SUBFRAME ; 
 int MDDI_HOST_REV_RATE_DIV ; 
 int MDDI_HOST_TA2_LEN ; 
 int /*<<< orphan*/  MDDI_INT_NO_CMD_PKTS_PEND ; 
 int MDDI_MAX_REV_PKT_SIZE ; 
 int MDDI_REV_BUFFER_SIZE ; 
 int /*<<< orphan*/  PAD_CTL ; 
 int /*<<< orphan*/  REV_ENCAP_SZ ; 
 int /*<<< orphan*/  REV_RATE_DIV ; 
 int /*<<< orphan*/  REV_SIZE ; 
 int /*<<< orphan*/  SPM ; 
 int /*<<< orphan*/  TA1_LEN ; 
 int /*<<< orphan*/  TA2_LEN ; 
 int /*<<< orphan*/  VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct mddi_info*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mddi_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static uint16_t FUNC6(struct mddi_info *mddi)
{
	FUNC4(0x0001, VERSION);
	FUNC4(MDDI_HOST_BYTES_PER_SUBFRAME, BPS);
	FUNC4(0x0003, SPM); /* subframes per media */
	FUNC4(0x0005, TA1_LEN);
	FUNC4(MDDI_HOST_TA2_LEN, TA2_LEN);
	FUNC4(0x0096, DRIVE_HI);
	/* 0x32 normal, 0x50 for Toshiba display */
	FUNC4(0x0050, DRIVE_LO);
	FUNC4(0x003C, DISP_WAKE); /* wakeup counter */
	FUNC4(MDDI_HOST_REV_RATE_DIV, REV_RATE_DIV);

	FUNC4(MDDI_REV_BUFFER_SIZE, REV_SIZE);
	FUNC4(MDDI_MAX_REV_PKT_SIZE, REV_ENCAP_SZ);

	/* disable periodic rev encap */
	FUNC4(MDDI_CMD_PERIODIC_REV_ENCAP, CMD);
	FUNC3(mddi, MDDI_INT_NO_CMD_PKTS_PEND);

	if (FUNC1(PAD_CTL) == 0) {
		/* If we are turning on band gap, need to wait 5us before
		 * turning on the rest of the PAD */
		FUNC4(0x08000, PAD_CTL);
		FUNC5(5);
	}

	/* Recommendation from PAD hw team */
	FUNC4(0xa850f, PAD_CTL);


	/* Need an even number for counts */
	FUNC4(0x60006, DRIVER_START_CNT);

	FUNC2(&mddi->client_data, 0);

	FUNC4(MDDI_CMD_DISP_IGNORE, CMD);
	FUNC3(mddi, MDDI_INT_NO_CMD_PKTS_PEND);

	FUNC0(mddi);
	return FUNC1(CORE_VER) & 0xffff;
}