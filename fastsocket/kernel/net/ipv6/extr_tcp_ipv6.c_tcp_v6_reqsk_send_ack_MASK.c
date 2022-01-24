#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int /*<<< orphan*/  ts_recent; int /*<<< orphan*/  rcv_wnd; } ;
struct TYPE_4__ {int /*<<< orphan*/  daddr; } ;
struct TYPE_3__ {scalar_t__ rcv_isn; scalar_t__ snt_isn; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 TYPE_1__* FUNC1 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct sock *sk, struct sk_buff *skb,
				  struct request_sock *req)
{
	FUNC3(skb, FUNC1(req)->snt_isn + 1, FUNC1(req)->rcv_isn + 1, req->rcv_wnd, req->ts_recent,
			FUNC2(sk, &FUNC0(skb)->daddr));
}