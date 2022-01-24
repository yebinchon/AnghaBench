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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ dccpd_opt_len; } ;

/* Variables and functions */
 scalar_t__ DCCP_MAX_OPT_LEN ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,void const*,unsigned char const) ; 
 unsigned char* FUNC2 (struct sk_buff*,unsigned char const) ; 

int FUNC3(struct sock *sk, struct sk_buff *skb,
			const unsigned char option,
			const void *value, const unsigned char len)
{
	unsigned char *to;

	if (FUNC0(skb)->dccpd_opt_len + len + 2 > DCCP_MAX_OPT_LEN)
		return -1;

	FUNC0(skb)->dccpd_opt_len += len + 2;

	to    = FUNC2(skb, len + 2);
	*to++ = option;
	*to++ = len + 2;

	FUNC1(to, value, len);
	return 0;
}