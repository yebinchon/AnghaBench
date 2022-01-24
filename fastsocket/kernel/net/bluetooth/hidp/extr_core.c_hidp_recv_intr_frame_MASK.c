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
struct sk_buff {unsigned char len; unsigned char* data; } ;
struct hidp_session {scalar_t__ hid; scalar_t__ input; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 unsigned char HIDP_DATA_RTYPE_INPUT ; 
 unsigned char HIDP_TRANS_DATA ; 
 int /*<<< orphan*/  HID_INPUT_REPORT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,unsigned char*,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hidp_session*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct hidp_session*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC6(struct hidp_session *session,
				struct sk_buff *skb)
{
	unsigned char hdr;

	FUNC0("session %p skb %p len %d", session, skb, skb->len);

	hdr = skb->data[0];
	FUNC5(skb, 1);

	if (hdr == (HIDP_TRANS_DATA | HIDP_DATA_RTYPE_INPUT)) {
		FUNC3(session);

		if (session->input)
			FUNC2(session, skb);

		if (session->hid) {
			FUNC1(session->hid, HID_INPUT_REPORT, skb->data, skb->len, 1);
			FUNC0("report len %d", skb->len);
		}
	} else {
		FUNC0("Unsupported protocol header 0x%02x", hdr);
	}

	FUNC4(skb);
}