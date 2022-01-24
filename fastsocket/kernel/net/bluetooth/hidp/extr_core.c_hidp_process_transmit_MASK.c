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
struct hidp_session {int /*<<< orphan*/  intr_transmit; int /*<<< orphan*/  intr_sock; int /*<<< orphan*/  ctrl_transmit; int /*<<< orphan*/  ctrl_sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hidp_session*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hidp_session*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(struct hidp_session *session)
{
	struct sk_buff *skb;

	FUNC0("session %p", session);

	while ((skb = FUNC4(&session->ctrl_transmit))) {
		if (FUNC1(session->ctrl_sock, skb->data, skb->len) < 0) {
			FUNC5(&session->ctrl_transmit, skb);
			break;
		}

		FUNC2(session);
		FUNC3(skb);
	}

	while ((skb = FUNC4(&session->intr_transmit))) {
		if (FUNC1(session->intr_sock, skb->data, skb->len) < 0) {
			FUNC5(&session->intr_transmit, skb);
			break;
		}

		FUNC2(session);
		FUNC3(skb);
	}
}