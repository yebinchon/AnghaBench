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
struct fib_rules_ops {scalar_t__ (* nlmsg_payload ) (struct fib_rule*) ;} ;
struct fib_rule_hdr {int dummy; } ;
struct fib_rule {int dummy; } ;

/* Variables and functions */
 int IFNAMSIZ ; 
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct fib_rule*) ; 

__attribute__((used)) static inline size_t FUNC3(struct fib_rules_ops *ops,
					 struct fib_rule *rule)
{
	size_t payload = FUNC0(sizeof(struct fib_rule_hdr))
			 + FUNC1(IFNAMSIZ) /* FRA_IFNAME */
			 + FUNC1(4) /* FRA_PRIORITY */
			 + FUNC1(4) /* FRA_TABLE */
			 + FUNC1(4) /* FRA_FWMARK */
			 + FUNC1(4); /* FRA_FWMASK */

	if (ops->nlmsg_payload)
		payload += ops->nlmsg_payload(rule);

	return payload;
}