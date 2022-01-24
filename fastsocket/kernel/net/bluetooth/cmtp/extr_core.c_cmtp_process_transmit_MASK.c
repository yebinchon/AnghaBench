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
struct sk_buff {unsigned int len; int /*<<< orphan*/  data; scalar_t__ cb; } ;
struct cmtp_session {unsigned int mtu; int /*<<< orphan*/  transmit; } ;
struct cmtp_scb {scalar_t__ id; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct cmtp_session*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct cmtp_session*) ; 
 int /*<<< orphan*/  FUNC4 (struct cmtp_session*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cmtp_session*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,unsigned char*,unsigned int) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,unsigned int) ; 
 unsigned char* FUNC11 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uint ; 

__attribute__((used)) static void FUNC14(struct cmtp_session *session)
{
	struct sk_buff *skb, *nskb;
	unsigned char *hdr;
	unsigned int size, tail;

	FUNC0("session %p", session);

	if (!(nskb = FUNC2(session->mtu, GFP_ATOMIC))) {
		FUNC1("Can't allocate memory for new frame");
		return;
	}

	while ((skb = FUNC9(&session->transmit))) {
		struct cmtp_scb *scb = (void *) skb->cb;

		if ((tail = (session->mtu - nskb->len)) < 5) {
			FUNC5(session, nskb->data, nskb->len);
			FUNC13(nskb, 0);
			tail = session->mtu;
		}

		size = FUNC7(uint, ((tail < 258) ? (tail - 2) : (tail - 3)), skb->len);

		if ((scb->id < 0) && ((scb->id = FUNC3(session)) < 0)) {
			FUNC12(&session->transmit, skb);
			break;
		}

		if (size < 256) {
			hdr = FUNC11(nskb, 2);
			hdr[0] = 0x40
				| ((scb->id << 2) & 0x3c)
				| ((skb->len == size) ? 0x00 : 0x01);
			hdr[1] = size;
		} else {
			hdr = FUNC11(nskb, 3);
			hdr[0] = 0x80
				| ((scb->id << 2) & 0x3c)
				| ((skb->len == size) ? 0x00 : 0x01);
			hdr[1] = size & 0xff;
			hdr[2] = size >> 8;
		}

		FUNC8(skb, FUNC11(nskb, size), size);
		FUNC10(skb, size);

		if (skb->len > 0) {
			FUNC12(&session->transmit, skb);
		} else {
			FUNC4(session, scb->id);
			if (scb->data) {
				FUNC5(session, nskb->data, nskb->len);
				FUNC13(nskb, 0);
			}
			FUNC6(skb);
		}
	}

	FUNC5(session, nskb->data, nskb->len);

	FUNC6(nskb);
}