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
struct sk_buff {int /*<<< orphan*/  data; int /*<<< orphan*/  len; scalar_t__ cb; } ;
struct cmtp_session {int /*<<< orphan*/  transmit; } ;
struct cmtp_scb {int id; int data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct cmtp_session*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ CAPI_DATA_B3 ; 
 int /*<<< orphan*/  FUNC2 (struct cmtp_session*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct cmtp_session *session, struct sk_buff *skb)
{
	struct cmtp_scb *scb = (void *) skb->cb;

	FUNC0("session %p skb %p len %d", session, skb, skb->len);

	scb->id = -1;
	scb->data = (FUNC1(skb->data) == CAPI_DATA_B3);

	FUNC3(&session->transmit, skb);

	FUNC2(session);
}