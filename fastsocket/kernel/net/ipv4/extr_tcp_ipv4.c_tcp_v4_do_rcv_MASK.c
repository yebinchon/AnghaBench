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
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  rxhash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 scalar_t__ TCP_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TCP_LISTEN ; 
 int /*<<< orphan*/  TCP_MIB_INERRS ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sock*,struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct sock* FUNC11 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC12 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,struct sk_buff*) ; 

int FUNC14(struct sock *sk, struct sk_buff *skb)
{
	struct sock *rsk;
#ifdef CONFIG_TCP_MD5SIG
	/*
	 * We really want to reject the packet as early as possible
	 * if:
	 *  o We're expecting an MD5'd packet and this is no MD5 tcp option
	 *  o There is an MD5 option and we're not expecting one
	 */
	if (tcp_v4_inbound_md5_hash(sk, skb))
		goto discard;
#endif

	if (sk->sk_state == TCP_ESTABLISHED) { /* Fast path */
		FUNC0(sk);
		if (FUNC9(sk, skb, FUNC7(skb), skb->len)) {
			rsk = sk;
			goto reset;
		}
		FUNC0(sk);
		return 0;
	}

	if (skb->len < FUNC8(skb) || FUNC5(skb))
		goto csum_err;

	if (sk->sk_state == TCP_LISTEN) {
		struct sock *nsk = FUNC11(sk, skb);
		if (!nsk)
			goto discard;

		if (nsk != sk) {
			FUNC4(nsk, skb->rxhash);
			if (FUNC6(sk, nsk, skb)) {
				rsk = nsk;
				goto reset;
			}
			return 0;
		}
	}

	FUNC0(sk);
	if (FUNC10(sk, skb, FUNC7(skb), skb->len)) {
		rsk = sk;
		goto reset;
	}
	FUNC0(sk);
	return 0;

reset:
	FUNC13(rsk, skb);
discard:
	FUNC2(skb);
	/* Be careful here. If this function gets more complicated and
	 * gcc suffers from register pressure on the x86, sk (in %ebx)
	 * might be destroyed here. This current version compiles correctly,
	 * but you have been warned.
	 */
	return 0;

csum_err:
	FUNC1(FUNC3(sk), TCP_MIB_INERRS);
	goto discard;
}