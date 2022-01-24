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
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct capi_ctr {int dummy; } ;
struct cmtp_session {int flags; int num; struct capi_ctr ctrl; } ;
struct cmtp_application {int appl; } ;
typedef  int __u32 ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct cmtp_session*,struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ CAPI_INTEROPERABILITY ; 
 scalar_t__ CAPI_MSG_BASELEN ; 
 int CMTP_LOOPBACK ; 
 int /*<<< orphan*/  CMTP_MAPPING ; 
 int /*<<< orphan*/  FUNC9 (struct capi_ctr*,int,struct sk_buff*) ; 
 struct cmtp_application* FUNC10 (struct cmtp_session*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct cmtp_session*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 

void FUNC13(struct cmtp_session *session, struct sk_buff *skb)
{
	struct capi_ctr *ctrl = &session->ctrl;
	struct cmtp_application *application;
	__u16 cmd, appl;
	__u32 contr;

	FUNC0("session %p skb %p len %d", session, skb, skb->len);

	if (skb->len < CAPI_MSG_BASELEN)
		return;

	if (FUNC4(skb->data) == CAPI_INTEROPERABILITY) {
		FUNC11(session, skb);
		return;
	}

	if (session->flags & (1 << CMTP_LOOPBACK)) {
		FUNC12(skb);
		return;
	}

	cmd = FUNC2(FUNC4(skb->data), FUNC8(skb->data));
	appl = FUNC3(skb->data);
	contr = FUNC5(skb->data);

	application = FUNC10(session, CMTP_MAPPING, appl);
	if (application) {
		appl = application->appl;
		FUNC6(skb->data, appl);
	} else {
		FUNC1("Can't find application with id %d", appl);
		FUNC12(skb);
		return;
	}

	if ((contr & 0x7f) == 0x01) {
		contr = (contr & 0xffffff80) | session->num;
		FUNC7(skb->data, contr);
	}

	if (!ctrl) {
		FUNC1("Can't find controller %d for message", session->num);
		FUNC12(skb);
		return;
	}

	FUNC9(ctrl, appl, skb);
}