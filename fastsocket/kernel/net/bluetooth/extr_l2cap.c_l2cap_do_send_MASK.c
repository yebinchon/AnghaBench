#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct l2cap_pinfo {TYPE_1__* conn; } ;
struct TYPE_2__ {int /*<<< orphan*/  hcon; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct l2cap_pinfo* FUNC3 (struct sock*) ; 

__attribute__((used)) static inline int FUNC4(struct sock *sk, struct sk_buff *skb)
{
	struct l2cap_pinfo *pi = FUNC3(sk);
	int err;

	FUNC0("sk %p, skb %p len %d", sk, skb, skb->len);

	err = FUNC1(pi->conn->hcon, skb, 0);
	if (err < 0)
		FUNC2(skb);

	return err;
}