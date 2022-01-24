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
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int,scalar_t__) ; 
 int RTAX_MAX ; 
 int /*<<< orphan*/  RTA_METRICS ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 int FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 

int FUNC4(struct sk_buff *skb, u32 *metrics)
{
	struct nlattr *mx;
	int i, valid = 0;

	mx = FUNC3(skb, RTA_METRICS);
	if (mx == NULL)
		return -ENOBUFS;

	for (i = 0; i < RTAX_MAX; i++) {
		if (metrics[i]) {
			valid++;
			FUNC0(skb, i+1, metrics[i]);
		}
	}

	if (!valid) {
		FUNC1(skb, mx);
		return 0;
	}

	return FUNC2(skb, mx);

nla_put_failure:
	FUNC1(skb, mx);
	return -EMSGSIZE;
}