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
struct sock {int dummy; } ;
struct sk_buff {size_t data_len; size_t len; } ;

/* Variables and functions */
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,size_t) ; 
 struct sk_buff* FUNC2 (struct sock*,size_t,size_t,int,int*) ; 

__attribute__((used)) static inline struct sk_buff *FUNC3(struct sock *sk, size_t prepad,
					       size_t reserve, size_t len,
					       size_t linear, int noblock,
					       int *err)
{
	struct sk_buff *skb;

	/* Under a page?  Don't bother with paged skb. */
	if (prepad + len < PAGE_SIZE || !linear)
		linear = len;

	skb = FUNC2(sk, prepad + linear, len - linear, noblock,
				   err);
	if (!skb)
		return NULL;

	FUNC1(skb, reserve);
	FUNC0(skb, linear);
	skb->data_len = len - linear;
	skb->len += len - linear;

	return skb;
}