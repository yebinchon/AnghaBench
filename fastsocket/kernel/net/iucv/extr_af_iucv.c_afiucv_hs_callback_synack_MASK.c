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
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;} ;
struct sk_buff {scalar_t__ data; } ;
struct iucv_sock {int /*<<< orphan*/  msglimit_peer; } ;
struct af_iucv_trans_hdr {int /*<<< orphan*/  window; } ;

/* Variables and functions */
 scalar_t__ IUCV_BOUND ; 
 scalar_t__ IUCV_CONNECTED ; 
 int NET_RX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct iucv_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 

__attribute__((used)) static int FUNC5(struct sock *sk, struct sk_buff *skb)
{
	struct iucv_sock *iucv = FUNC2(sk);
	struct af_iucv_trans_hdr *trans_hdr =
					(struct af_iucv_trans_hdr *)skb->data;

	if (!iucv)
		goto out;
	if (sk->sk_state != IUCV_BOUND)
		goto out;
	FUNC0(sk);
	iucv->msglimit_peer = trans_hdr->window;
	sk->sk_state = IUCV_CONNECTED;
	sk->sk_state_change(sk);
	FUNC1(sk);
out:
	FUNC3(skb);
	return NET_RX_SUCCESS;
}