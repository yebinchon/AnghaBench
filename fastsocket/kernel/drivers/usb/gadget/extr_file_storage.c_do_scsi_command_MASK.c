#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct fsg_dev {int* cmnd; int data_size_from_cmnd; int cmnd_size; scalar_t__ data_dir; int residue; int /*<<< orphan*/  filesem; TYPE_1__* curlun; scalar_t__ short_packet_received; scalar_t__ phase_error; struct fsg_buffhd* next_buffhd_to_fill; struct fsg_buffhd* next_buffhd_to_drain; } ;
struct fsg_buffhd {scalar_t__ state; TYPE_2__* inreq; } ;
struct TYPE_6__ {int /*<<< orphan*/  cdrom; } ;
struct TYPE_5__ {int length; } ;
struct TYPE_4__ {int /*<<< orphan*/  sense_data; } ;

/* Variables and functions */
 scalar_t__ BUF_STATE_EMPTY ; 
 scalar_t__ BUF_STATE_FULL ; 
 scalar_t__ DATA_DIR_FROM_HOST ; 
 scalar_t__ DATA_DIR_NONE ; 
 scalar_t__ DATA_DIR_TO_HOST ; 
 scalar_t__ DATA_DIR_UNKNOWN ; 
 int EINTR ; 
 int EINVAL ; 
#define  SC_FORMAT_UNIT 152 
#define  SC_INQUIRY 151 
#define  SC_MODE_SELECT_10 150 
#define  SC_MODE_SELECT_6 149 
#define  SC_MODE_SENSE_10 148 
#define  SC_MODE_SENSE_6 147 
#define  SC_PREVENT_ALLOW_MEDIUM_REMOVAL 146 
#define  SC_READ_10 145 
#define  SC_READ_12 144 
#define  SC_READ_6 143 
#define  SC_READ_CAPACITY 142 
#define  SC_READ_FORMAT_CAPACITIES 141 
#define  SC_READ_HEADER 140 
#define  SC_READ_TOC 139 
#define  SC_RELEASE 138 
#define  SC_REQUEST_SENSE 137 
#define  SC_RESERVE 136 
#define  SC_SEND_DIAGNOSTIC 135 
#define  SC_START_STOP_UNIT 134 
#define  SC_SYNCHRONIZE_CACHE 133 
#define  SC_TEST_UNIT_READY 132 
#define  SC_VERIFY 131 
#define  SC_WRITE_10 130 
#define  SC_WRITE_12 129 
#define  SC_WRITE_6 128 
 int /*<<< orphan*/  SS_INVALID_COMMAND ; 
 int FUNC0 (struct fsg_dev*,int,scalar_t__,int,int,char*) ; 
 int /*<<< orphan*/  current ; 
 int FUNC1 (struct fsg_dev*,struct fsg_buffhd*) ; 
 int FUNC2 (struct fsg_dev*,struct fsg_buffhd*) ; 
 int FUNC3 (struct fsg_dev*,struct fsg_buffhd*) ; 
 int FUNC4 (struct fsg_dev*) ; 
 int FUNC5 (struct fsg_dev*) ; 
 int FUNC6 (struct fsg_dev*,struct fsg_buffhd*) ; 
 int FUNC7 (struct fsg_dev*,struct fsg_buffhd*) ; 
 int FUNC8 (struct fsg_dev*,struct fsg_buffhd*) ; 
 int FUNC9 (struct fsg_dev*,struct fsg_buffhd*) ; 
 int FUNC10 (struct fsg_dev*,struct fsg_buffhd*) ; 
 int FUNC11 (struct fsg_dev*) ; 
 int FUNC12 (struct fsg_dev*) ; 
 int FUNC13 (struct fsg_dev*) ; 
 int FUNC14 (struct fsg_dev*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct fsg_dev*) ; 
 int FUNC17 (int*) ; 
 int FUNC18 (int*) ; 
 int FUNC19 (int /*<<< orphan*/ ,int) ; 
 TYPE_3__ mod_data ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (struct fsg_dev*) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC24(struct fsg_dev *fsg)
{
	struct fsg_buffhd	*bh;
	int			rc;
	int			reply = -EINVAL;
	int			i;
	static char		unknown[16];

	FUNC16(fsg);

	/* Wait for the next buffer to become available for data or status */
	bh = fsg->next_buffhd_to_drain = fsg->next_buffhd_to_fill;
	while (bh->state != BUF_STATE_EMPTY) {
		rc = FUNC21(fsg);
		if (rc)
			return rc;
	}
	fsg->phase_error = 0;
	fsg->short_packet_received = 0;

	FUNC15(&fsg->filesem);	// We're using the backing file
	switch (fsg->cmnd[0]) {

	case SC_INQUIRY:
		fsg->data_size_from_cmnd = fsg->cmnd[4];
		if ((reply = FUNC0(fsg, 6, DATA_DIR_TO_HOST,
				(1<<4), 0,
				"INQUIRY")) == 0)
			reply = FUNC1(fsg, bh);
		break;

	case SC_MODE_SELECT_6:
		fsg->data_size_from_cmnd = fsg->cmnd[4];
		if ((reply = FUNC0(fsg, 6, DATA_DIR_FROM_HOST,
				(1<<1) | (1<<4), 0,
				"MODE SELECT(6)")) == 0)
			reply = FUNC2(fsg, bh);
		break;

	case SC_MODE_SELECT_10:
		fsg->data_size_from_cmnd = FUNC17(&fsg->cmnd[7]);
		if ((reply = FUNC0(fsg, 10, DATA_DIR_FROM_HOST,
				(1<<1) | (3<<7), 0,
				"MODE SELECT(10)")) == 0)
			reply = FUNC2(fsg, bh);
		break;

	case SC_MODE_SENSE_6:
		fsg->data_size_from_cmnd = fsg->cmnd[4];
		if ((reply = FUNC0(fsg, 6, DATA_DIR_TO_HOST,
				(1<<1) | (1<<2) | (1<<4), 0,
				"MODE SENSE(6)")) == 0)
			reply = FUNC3(fsg, bh);
		break;

	case SC_MODE_SENSE_10:
		fsg->data_size_from_cmnd = FUNC17(&fsg->cmnd[7]);
		if ((reply = FUNC0(fsg, 10, DATA_DIR_TO_HOST,
				(1<<1) | (1<<2) | (3<<7), 0,
				"MODE SENSE(10)")) == 0)
			reply = FUNC3(fsg, bh);
		break;

	case SC_PREVENT_ALLOW_MEDIUM_REMOVAL:
		fsg->data_size_from_cmnd = 0;
		if ((reply = FUNC0(fsg, 6, DATA_DIR_NONE,
				(1<<4), 0,
				"PREVENT-ALLOW MEDIUM REMOVAL")) == 0)
			reply = FUNC4(fsg);
		break;

	case SC_READ_6:
		i = fsg->cmnd[4];
		fsg->data_size_from_cmnd = (i == 0 ? 256 : i) << 9;
		if ((reply = FUNC0(fsg, 6, DATA_DIR_TO_HOST,
				(7<<1) | (1<<4), 1,
				"READ(6)")) == 0)
			reply = FUNC5(fsg);
		break;

	case SC_READ_10:
		fsg->data_size_from_cmnd =
				FUNC17(&fsg->cmnd[7]) << 9;
		if ((reply = FUNC0(fsg, 10, DATA_DIR_TO_HOST,
				(1<<1) | (0xf<<2) | (3<<7), 1,
				"READ(10)")) == 0)
			reply = FUNC5(fsg);
		break;

	case SC_READ_12:
		fsg->data_size_from_cmnd =
				FUNC18(&fsg->cmnd[6]) << 9;
		if ((reply = FUNC0(fsg, 12, DATA_DIR_TO_HOST,
				(1<<1) | (0xf<<2) | (0xf<<6), 1,
				"READ(12)")) == 0)
			reply = FUNC5(fsg);
		break;

	case SC_READ_CAPACITY:
		fsg->data_size_from_cmnd = 8;
		if ((reply = FUNC0(fsg, 10, DATA_DIR_TO_HOST,
				(0xf<<2) | (1<<8), 1,
				"READ CAPACITY")) == 0)
			reply = FUNC6(fsg, bh);
		break;

	case SC_READ_HEADER:
		if (!mod_data.cdrom)
			goto unknown_cmnd;
		fsg->data_size_from_cmnd = FUNC17(&fsg->cmnd[7]);
		if ((reply = FUNC0(fsg, 10, DATA_DIR_TO_HOST,
				(3<<7) | (0x1f<<1), 1,
				"READ HEADER")) == 0)
			reply = FUNC8(fsg, bh);
		break;

	case SC_READ_TOC:
		if (!mod_data.cdrom)
			goto unknown_cmnd;
		fsg->data_size_from_cmnd = FUNC17(&fsg->cmnd[7]);
		if ((reply = FUNC0(fsg, 10, DATA_DIR_TO_HOST,
				(7<<6) | (1<<1), 1,
				"READ TOC")) == 0)
			reply = FUNC9(fsg, bh);
		break;

	case SC_READ_FORMAT_CAPACITIES:
		fsg->data_size_from_cmnd = FUNC17(&fsg->cmnd[7]);
		if ((reply = FUNC0(fsg, 10, DATA_DIR_TO_HOST,
				(3<<7), 1,
				"READ FORMAT CAPACITIES")) == 0)
			reply = FUNC7(fsg, bh);
		break;

	case SC_REQUEST_SENSE:
		fsg->data_size_from_cmnd = fsg->cmnd[4];
		if ((reply = FUNC0(fsg, 6, DATA_DIR_TO_HOST,
				(1<<4), 0,
				"REQUEST SENSE")) == 0)
			reply = FUNC10(fsg, bh);
		break;

	case SC_START_STOP_UNIT:
		fsg->data_size_from_cmnd = 0;
		if ((reply = FUNC0(fsg, 6, DATA_DIR_NONE,
				(1<<1) | (1<<4), 0,
				"START-STOP UNIT")) == 0)
			reply = FUNC11(fsg);
		break;

	case SC_SYNCHRONIZE_CACHE:
		fsg->data_size_from_cmnd = 0;
		if ((reply = FUNC0(fsg, 10, DATA_DIR_NONE,
				(0xf<<2) | (3<<7), 1,
				"SYNCHRONIZE CACHE")) == 0)
			reply = FUNC12(fsg);
		break;

	case SC_TEST_UNIT_READY:
		fsg->data_size_from_cmnd = 0;
		reply = FUNC0(fsg, 6, DATA_DIR_NONE,
				0, 1,
				"TEST UNIT READY");
		break;

	/* Although optional, this command is used by MS-Windows.  We
	 * support a minimal version: BytChk must be 0. */
	case SC_VERIFY:
		fsg->data_size_from_cmnd = 0;
		if ((reply = FUNC0(fsg, 10, DATA_DIR_NONE,
				(1<<1) | (0xf<<2) | (3<<7), 1,
				"VERIFY")) == 0)
			reply = FUNC13(fsg);
		break;

	case SC_WRITE_6:
		i = fsg->cmnd[4];
		fsg->data_size_from_cmnd = (i == 0 ? 256 : i) << 9;
		if ((reply = FUNC0(fsg, 6, DATA_DIR_FROM_HOST,
				(7<<1) | (1<<4), 1,
				"WRITE(6)")) == 0)
			reply = FUNC14(fsg);
		break;

	case SC_WRITE_10:
		fsg->data_size_from_cmnd =
				FUNC17(&fsg->cmnd[7]) << 9;
		if ((reply = FUNC0(fsg, 10, DATA_DIR_FROM_HOST,
				(1<<1) | (0xf<<2) | (3<<7), 1,
				"WRITE(10)")) == 0)
			reply = FUNC14(fsg);
		break;

	case SC_WRITE_12:
		fsg->data_size_from_cmnd =
				FUNC18(&fsg->cmnd[6]) << 9;
		if ((reply = FUNC0(fsg, 12, DATA_DIR_FROM_HOST,
				(1<<1) | (0xf<<2) | (0xf<<6), 1,
				"WRITE(12)")) == 0)
			reply = FUNC14(fsg);
		break;

	/* Some mandatory commands that we recognize but don't implement.
	 * They don't mean much in this setting.  It's left as an exercise
	 * for anyone interested to implement RESERVE and RELEASE in terms
	 * of Posix locks. */
	case SC_FORMAT_UNIT:
	case SC_RELEASE:
	case SC_RESERVE:
	case SC_SEND_DIAGNOSTIC:
		// Fall through

	default:
 unknown_cmnd:
		fsg->data_size_from_cmnd = 0;
		FUNC22(unknown, "Unknown x%02x", fsg->cmnd[0]);
		if ((reply = FUNC0(fsg, fsg->cmnd_size,
				DATA_DIR_UNKNOWN, 0xff, 0, unknown)) == 0) {
			fsg->curlun->sense_data = SS_INVALID_COMMAND;
			reply = -EINVAL;
		}
		break;
	}
	FUNC23(&fsg->filesem);

	if (reply == -EINTR || FUNC20(current))
		return -EINTR;

	/* Set up the single reply buffer for finish_reply() */
	if (reply == -EINVAL)
		reply = 0;		// Error reply length
	if (reply >= 0 && fsg->data_dir == DATA_DIR_TO_HOST) {
		reply = FUNC19((u32) reply, fsg->data_size_from_cmnd);
		bh->inreq->length = reply;
		bh->state = BUF_STATE_FULL;
		fsg->residue -= reply;
	}				// Otherwise it's already set

	return 0;
}