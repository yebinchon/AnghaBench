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
struct sk_buff {int dummy; } ;
struct hidp_session {int /*<<< orphan*/  intr_transmit; int /*<<< orphan*/  hid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hidp_session*,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hidp_session*) ; 
 int /*<<< orphan*/  FUNC4 (int*,unsigned char*,int) ; 
 int* FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static int FUNC7(struct hidp_session *session,
				unsigned char *data, int size)
{
	struct sk_buff *skb;

	FUNC0("session %p hid %p data %p size %d", session, session->hid, data, size);

	if (!(skb = FUNC2(size + 1, GFP_ATOMIC))) {
		FUNC1("Can't allocate memory for new frame");
		return -ENOMEM;
	}

	*FUNC5(skb, 1) = 0xa2;
	if (size > 0)
		FUNC4(FUNC5(skb, size), data, size);

	FUNC6(&session->intr_transmit, skb);

	FUNC3(session);

	return 0;
}