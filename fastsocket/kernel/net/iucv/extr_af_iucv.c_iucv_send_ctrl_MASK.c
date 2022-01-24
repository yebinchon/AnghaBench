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
typedef  int /*<<< orphan*/  u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct af_iucv_trans_hdr {int dummy; } ;

/* Variables and functions */
 int ETH_HLEN ; 
 int FUNC0 (int /*<<< orphan*/ *,struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC2 (struct sock*,int,int,int*) ; 

__attribute__((used)) static int FUNC3(struct sock *sk, u8 flags)
{
	int err = 0;
	int blen;
	struct sk_buff *skb;

	blen = sizeof(struct af_iucv_trans_hdr) + ETH_HLEN;
	skb = FUNC2(sk, blen, 1, &err);
	if (skb) {
		FUNC1(skb, blen);
		err = FUNC0(NULL, sk, skb, flags);
	}
	return err;
}