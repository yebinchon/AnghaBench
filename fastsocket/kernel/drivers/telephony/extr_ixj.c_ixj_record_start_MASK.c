#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int recording; scalar_t__ playing; } ;
struct TYPE_8__ {int low; } ;
struct TYPE_10__ {int rec_codec; int rec_mode; int rec_frame_size; int read_buffer_size; int /*<<< orphan*/  aec_level; TYPE_2__ flags; TYPE_1__ ver; int /*<<< orphan*/  board; scalar_t__ read_buffer; } ;
typedef  TYPE_3__ IXJ ;

/* Variables and functions */
 int ENOMEM ; 
#define  G723_53 135 
#define  G723_63 134 
#define  G728 133 
#define  G729 132 
#define  G729B 131 
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  TS41 130 
#define  TS48 129 
#define  TS85 128 
 scalar_t__ FUNC0 (unsigned short,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int ixjdebug ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC5(IXJ *j)
{
	unsigned short cmd = 0x0000;

	if (j->read_buffer) {
		FUNC2(j);
	}
	j->flags.recording = 1;
	FUNC0(0x0FE0, j);	/* Put the DSP in full power mode. */

	if(ixjdebug & 0x0002)
		FUNC4("IXJ %d Starting Record Codec %d at %ld\n", j->board, j->rec_codec, jiffies);

	if (!j->rec_mode) {
		switch (j->rec_codec) {
		case G723_63:
			cmd = 0x5131;
			break;
		case G723_53:
			cmd = 0x5132;
			break;
		case TS85:
			cmd = 0x5130;	/* TrueSpeech 8.5 */

			break;
		case TS48:
			cmd = 0x5133;	/* TrueSpeech 4.8 */

			break;
		case TS41:
			cmd = 0x5134;	/* TrueSpeech 4.1 */

			break;
		case G728:
			cmd = 0x5135;
			break;
		case G729:
		case G729B:
			cmd = 0x5136;
			break;
		default:
			return 1;
		}
		if (FUNC0(cmd, j))
			return -1;
	}
	if (!j->read_buffer) {
		if (!j->read_buffer)
			j->read_buffer = FUNC3(j->rec_frame_size * 2, GFP_ATOMIC);
		if (!j->read_buffer) {
			FUNC4("Read buffer allocation for ixj board %d failed!\n", j->board);
			return -ENOMEM;
		}
	}
	j->read_buffer_size = j->rec_frame_size * 2;

	if (FUNC0(0x5102, j))		/* Set Poll sync mode */

		return -1;

	switch (j->rec_mode) {
	case 0:
		cmd = 0x1C03;	/* Record C1 */

		break;
	case 4:
		if (j->ver.low == 0x12) {
			cmd = 0x1E03;	/* Record C1 */

		} else {
			cmd = 0x1E01;	/* Record C1 */

		}
		break;
	case 5:
		if (j->ver.low == 0x12) {
			cmd = 0x1E83;	/* Record C1 */

		} else {
			cmd = 0x1E81;	/* Record C1 */

		}
		break;
	case 6:
		if (j->ver.low == 0x12) {
			cmd = 0x1F03;	/* Record C1 */

		} else {
			cmd = 0x1F01;	/* Record C1 */

		}
		break;
	case 7:
		if (j->ver.low == 0x12) {
			cmd = 0x1F83;	/* Record C1 */
		} else {
			cmd = 0x1F81;	/* Record C1 */
		}
		break;
	}
	if (FUNC0(cmd, j))
		return -1;

	if (j->flags.playing) {
		FUNC1(j, j->aec_level);
	}
	return 0;
}