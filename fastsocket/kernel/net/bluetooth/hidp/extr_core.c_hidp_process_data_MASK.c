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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct hidp_session {int /*<<< orphan*/  hid; int /*<<< orphan*/  input; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hidp_session*,struct sk_buff*,int /*<<< orphan*/ ,unsigned char) ; 
#define  HIDP_DATA_RTYPE_FEATURE 131 
#define  HIDP_DATA_RTYPE_INPUT 130 
#define  HIDP_DATA_RTYPE_OTHER 129 
#define  HIDP_DATA_RTYPE_OUPUT 128 
 int HIDP_HSHK_ERR_INVALID_PARAMETER ; 
 int HIDP_TRANS_HANDSHAKE ; 
 int /*<<< orphan*/  HID_INPUT_REPORT ; 
 int /*<<< orphan*/  FUNC1 (struct hidp_session*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hidp_session*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct hidp_session*) ; 

__attribute__((used)) static void FUNC5(struct hidp_session *session, struct sk_buff *skb,
				unsigned char param)
{
	FUNC0("session %p skb %p len %d param 0x%02x", session, skb, skb->len, param);

	switch (param) {
	case HIDP_DATA_RTYPE_INPUT:
		FUNC4(session);

		if (session->input)
			FUNC3(session, skb);

		if (session->hid)
			FUNC2(session->hid, HID_INPUT_REPORT, skb->data, skb->len, 0);

		break;

	case HIDP_DATA_RTYPE_OTHER:
	case HIDP_DATA_RTYPE_OUPUT:
	case HIDP_DATA_RTYPE_FEATURE:
		break;

	default:
		FUNC1(session,
			HIDP_TRANS_HANDSHAKE | HIDP_HSHK_ERR_INVALID_PARAMETER, NULL, 0);
	}
}