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
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int error; unsigned long rate_tokens; unsigned long rate_last; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {TYPE_1__ dst; } ;
struct rtable {TYPE_2__ u; } ;

/* Variables and functions */
#define  EACCES 131 
#define  EHOSTUNREACH 130 
#define  EINVAL 129 
#define  ENETUNREACH 128 
 int /*<<< orphan*/  ICMP_DEST_UNREACH ; 
 int ICMP_HOST_UNREACH ; 
 int ICMP_NET_UNREACH ; 
 int ICMP_PKT_FILTERED ; 
 int /*<<< orphan*/  IPSTATS_MIB_INNOROUTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ ip_rt_error_burst ; 
 scalar_t__ ip_rt_error_cost ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct rtable* FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb)
{
	struct rtable *rt = FUNC4(skb);
	unsigned long now;
	int code;

	switch (rt->u.dst.error) {
		case EINVAL:
		default:
			goto out;
		case EHOSTUNREACH:
			code = ICMP_HOST_UNREACH;
			break;
		case ENETUNREACH:
			code = ICMP_NET_UNREACH;
			FUNC0(FUNC1(rt->u.dst.dev),
					IPSTATS_MIB_INNOROUTES);
			break;
		case EACCES:
			code = ICMP_PKT_FILTERED;
			break;
	}

	now = jiffies;
	rt->u.dst.rate_tokens += now - rt->u.dst.rate_last;
	if (rt->u.dst.rate_tokens > ip_rt_error_burst)
		rt->u.dst.rate_tokens = ip_rt_error_burst;
	rt->u.dst.rate_last = now;
	if (rt->u.dst.rate_tokens >= ip_rt_error_cost) {
		rt->u.dst.rate_tokens -= ip_rt_error_cost;
		FUNC2(skb, ICMP_DEST_UNREACH, code, 0);
	}

out:	FUNC3(skb);
	return 0;
}