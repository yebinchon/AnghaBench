#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {int sk_allocation; int sk_shutdown; scalar_t__ sk_sndbuf; TYPE_1__* sk_socket; int /*<<< orphan*/  sk_wmem_alloc; } ;
struct sk_buff {unsigned long truesize; } ;
struct page {int dummy; } ;
struct TYPE_5__ {int size; scalar_t__ page_offset; struct page* page; } ;
typedef  TYPE_2__ skb_frag_t ;
typedef  int gfp_t ;
struct TYPE_6__ {int nr_frags; TYPE_2__* frags; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int EPIPE ; 
 int MAX_SKB_FRAGS ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_ASYNC_NOSPACE ; 
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 int __GFP_REPEAT ; 
 int __GFP_WAIT ; 
 struct page* FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (unsigned long,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct sock*) ; 
 TYPE_3__* FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct sock*) ; 
 int FUNC9 (long) ; 
 long FUNC10 (struct sock*,int) ; 
 long FUNC11 (struct sock*,long) ; 

struct sk_buff *FUNC12(struct sock *sk, unsigned long header_len,
				     unsigned long data_len, int noblock,
				     int *errcode)
{
	struct sk_buff *skb;
	gfp_t gfp_mask;
	long timeo;
	int err;

	gfp_mask = sk->sk_allocation;
	if (gfp_mask & __GFP_WAIT)
		gfp_mask |= __GFP_REPEAT;

	timeo = FUNC10(sk, noblock);
	while (1) {
		int npages;
		err = FUNC8(sk);
		if (err != 0)
			goto failure;

		err = -EPIPE;
		if (sk->sk_shutdown & SEND_SHUTDOWN)
			goto failure;

		err = -EMSGSIZE;
		npages = (data_len + (PAGE_SIZE - 1)) >> PAGE_SHIFT;
		if (npages > MAX_SKB_FRAGS)
			goto failure;

		if (FUNC2(&sk->sk_wmem_alloc) < sk->sk_sndbuf) {
			skb = FUNC1(header_len, gfp_mask);
			if (skb) {
				int i;

				/* No pages, we're done... */
				if (!data_len)
					break;

				skb->truesize += data_len;
				FUNC7(skb)->nr_frags = npages;
				for (i = 0; i < npages; i++) {
					struct page *page;
					skb_frag_t *frag;

					page = FUNC0(sk->sk_allocation, 0);
					if (!page) {
						err = -ENOBUFS;
						FUNC7(skb)->nr_frags = i;
						FUNC3(skb);
						goto failure;
					}

					frag = &FUNC7(skb)->frags[i];
					frag->page = page;
					frag->page_offset = 0;
					frag->size = (data_len >= PAGE_SIZE ?
						      PAGE_SIZE :
						      data_len);
					data_len -= PAGE_SIZE;
				}

				/* Full success... */
				break;
			}
			err = -ENOBUFS;
			goto failure;
		}
		FUNC4(SOCK_ASYNC_NOSPACE, &sk->sk_socket->flags);
		FUNC4(SOCK_NOSPACE, &sk->sk_socket->flags);
		err = -EAGAIN;
		if (!timeo)
			goto failure;
		if (FUNC5(current))
			goto interrupted;
		timeo = FUNC11(sk, timeo);
	}

	FUNC6(skb, sk);
	return skb;

interrupted:
	err = FUNC9(timeo);
failure:
	*errcode = err;
	return NULL;
}