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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {long expires; } ;
struct nf_conn {TYPE_1__ timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTA_TIMEOUT ; 
 long HZ ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (long) ; 
 long jiffies ; 

__attribute__((used)) static inline int
FUNC2(struct sk_buff *skb, const struct nf_conn *ct)
{
	long timeout = (ct->timeout.expires - jiffies) / HZ;

	if (timeout < 0)
		timeout = 0;

	FUNC0(skb, CTA_TIMEOUT, FUNC1(timeout));
	return 0;

nla_put_failure:
	return -1;
}