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
struct hidp_session {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hidp_session*,unsigned char) ; 
 int const HIDP_CTRL_SOFT_RESET ; 
#define  HIDP_HSHK_ERR_FATAL 134 
#define  HIDP_HSHK_ERR_INVALID_PARAMETER 133 
#define  HIDP_HSHK_ERR_INVALID_REPORT_ID 132 
#define  HIDP_HSHK_ERR_UNKNOWN 131 
#define  HIDP_HSHK_ERR_UNSUPPORTED_REQUEST 130 
#define  HIDP_HSHK_NOT_READY 129 
#define  HIDP_HSHK_SUCCESSFUL 128 
 int const HIDP_TRANS_HANDSHAKE ; 
 int const HIDP_TRANS_HID_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (struct hidp_session*,int const,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hidp_session *session,
					unsigned char param)
{
	FUNC0("session %p param 0x%02x", session, param);

	switch (param) {
	case HIDP_HSHK_SUCCESSFUL:
		/* FIXME: Call into SET_ GET_ handlers here */
		break;

	case HIDP_HSHK_NOT_READY:
	case HIDP_HSHK_ERR_INVALID_REPORT_ID:
	case HIDP_HSHK_ERR_UNSUPPORTED_REQUEST:
	case HIDP_HSHK_ERR_INVALID_PARAMETER:
		/* FIXME: Call into SET_ GET_ handlers here */
		break;

	case HIDP_HSHK_ERR_UNKNOWN:
		break;

	case HIDP_HSHK_ERR_FATAL:
		/* Device requests a reboot, as this is the only way this error
		 * can be recovered. */
		FUNC1(session,
			HIDP_TRANS_HID_CONTROL | HIDP_CTRL_SOFT_RESET, NULL, 0);
		break;

	default:
		FUNC1(session,
			HIDP_TRANS_HANDSHAKE | HIDP_HSHK_ERR_INVALID_PARAMETER, NULL, 0);
		break;
	}
}