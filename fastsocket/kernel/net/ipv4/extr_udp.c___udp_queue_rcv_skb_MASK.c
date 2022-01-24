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
struct sk_buff {int /*<<< orphan*/  rxhash; } ;
struct TYPE_2__ {scalar_t__ daddr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UDP_MIB_INERRORS ; 
 int /*<<< orphan*/  UDP_MIB_RCVBUFERRORS ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int FUNC5 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,struct sock*) ; 

__attribute__((used)) static int FUNC8(struct sock *sk, struct sk_buff *skb)
{
	int rc;

	if (FUNC2(sk)->daddr)
		FUNC6(sk, skb->rxhash);

	rc = FUNC5(sk, skb);
	if (rc < 0) {
		int is_udplite = FUNC0(sk);

		/* Note that an ENOMEM error is charged twice */
		if (rc == -ENOMEM)
			FUNC1(FUNC4(sk), UDP_MIB_RCVBUFERRORS,
					is_udplite);
		FUNC1(FUNC4(sk), UDP_MIB_INERRORS, is_udplite);
		FUNC3(skb);
		FUNC7(rc, sk);
		return -1;
	}

	return 0;
}