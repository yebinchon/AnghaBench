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
struct sk_buff {int dummy; } ;
struct nf_conn {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTA_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC2(struct sk_buff *skb, const struct nf_conn *ct)
{
	FUNC0(skb, CTA_STATUS, FUNC1(ct->status));
	return 0;

nla_put_failure:
	return -1;
}