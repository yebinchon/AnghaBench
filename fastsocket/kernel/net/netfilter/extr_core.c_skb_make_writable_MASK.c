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
struct sk_buff {unsigned int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC1 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 unsigned int FUNC3 (struct sk_buff*) ; 

int FUNC4(struct sk_buff *skb, unsigned int writable_len)
{
	if (writable_len > skb->len)
		return 0;

	/* Not exclusive use of packet?  Must copy. */
	if (!FUNC2(skb)) {
		if (writable_len <= FUNC3(skb))
			return 1;
	} else if (FUNC1(skb, writable_len))
		return 1;

	if (writable_len <= FUNC3(skb))
		writable_len = 0;
	else
		writable_len -= FUNC3(skb);

	return !!FUNC0(skb, writable_len);
}