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
struct nlmsghdr {int dummy; } ;
struct fib6_config {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct fib6_config*) ; 
 int FUNC1 (struct sk_buff*,struct nlmsghdr*,struct fib6_config*) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb, struct nlmsghdr* nlh, void *arg)
{
	struct fib6_config cfg;
	int err;

	err = FUNC1(skb, nlh, &cfg);
	if (err < 0)
		return err;

	return FUNC0(&cfg);
}