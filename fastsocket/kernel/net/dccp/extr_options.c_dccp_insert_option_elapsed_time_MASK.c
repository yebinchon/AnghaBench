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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {scalar_t__ dccpd_opt_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCCPO_ELAPSED_TIME ; 
 scalar_t__ DCCP_MAX_OPT_LEN ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/  const*,int) ; 
 unsigned char* FUNC5 (struct sk_buff*,int const) ; 

int FUNC6(struct sock *sk, struct sk_buff *skb,
				    u32 elapsed_time)
{
	const int elapsed_time_len = FUNC1(elapsed_time);
	const int len = 2 + elapsed_time_len;
	unsigned char *to;

	if (elapsed_time_len == 0)
		return 0;

	if (FUNC0(skb)->dccpd_opt_len + len > DCCP_MAX_OPT_LEN)
		return -1;

	FUNC0(skb)->dccpd_opt_len += len;

	to    = FUNC5(skb, len);
	*to++ = DCCPO_ELAPSED_TIME;
	*to++ = len;

	if (elapsed_time_len == 2) {
		const __be16 var16 = FUNC3((u16)elapsed_time);
		FUNC4(to, &var16, 2);
	} else {
		const __be32 var32 = FUNC2(elapsed_time);
		FUNC4(to, &var32, 4);
	}

	return 0;
}