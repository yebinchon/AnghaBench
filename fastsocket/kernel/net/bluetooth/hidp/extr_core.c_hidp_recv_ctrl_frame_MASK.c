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
struct sk_buff {unsigned char* data; int /*<<< orphan*/  len; } ;
struct hidp_session {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hidp_session*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 unsigned char HIDP_HEADER_PARAM_MASK ; 
 unsigned char HIDP_HEADER_TRANS_MASK ; 
 int const HIDP_HSHK_ERR_UNSUPPORTED_REQUEST ; 
#define  HIDP_TRANS_DATA 130 
#define  HIDP_TRANS_HANDSHAKE 129 
#define  HIDP_TRANS_HID_CONTROL 128 
 int /*<<< orphan*/  FUNC1 (struct hidp_session*,int const,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hidp_session*,struct sk_buff*,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct hidp_session*,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (struct hidp_session*,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC7(struct hidp_session *session,
					struct sk_buff *skb)
{
	unsigned char hdr, type, param;

	FUNC0("session %p skb %p len %d", session, skb, skb->len);

	hdr = skb->data[0];
	FUNC6(skb, 1);

	type = hdr & HIDP_HEADER_TRANS_MASK;
	param = hdr & HIDP_HEADER_PARAM_MASK;

	switch (type) {
	case HIDP_TRANS_HANDSHAKE:
		FUNC3(session, param);
		break;

	case HIDP_TRANS_HID_CONTROL:
		FUNC4(session, param);
		break;

	case HIDP_TRANS_DATA:
		FUNC2(session, skb, param);
		break;

	default:
		FUNC1(session,
			HIDP_TRANS_HANDSHAKE | HIDP_HSHK_ERR_UNSUPPORTED_REQUEST, NULL, 0);
		break;
	}

	FUNC5(skb);
}