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
struct sk_buff {int len; } ;
struct cmtp_session {struct sk_buff** reassembly; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct cmtp_session*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 

__attribute__((used)) static inline void FUNC7(struct cmtp_session *session, int id, const unsigned char *buf, int count)
{
	struct sk_buff *skb = session->reassembly[id], *nskb;
	int size;

	FUNC0("session %p buf %p count %d", session, buf, count);

	size = (skb) ? skb->len + count : count;

	if (!(nskb = FUNC2(size, GFP_ATOMIC))) {
		FUNC1("Can't allocate memory for CAPI message");
		return;
	}

	if (skb && (skb->len > 0))
		FUNC5(skb, FUNC6(nskb, skb->len), skb->len);

	FUNC4(FUNC6(nskb, count), buf, count);

	session->reassembly[id] = nskb;

	FUNC3(skb);
}