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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int dummy; } ;
struct net {int dummy; } ;
struct fib_table {int (* tb_delete ) (struct fib_table*,struct fib_config*) ;} ;
struct fib_config {int /*<<< orphan*/  fc_table; } ;

/* Variables and functions */
 int ESRCH ; 
 struct fib_table* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net*,struct sk_buff*,struct nlmsghdr*,struct fib_config*) ; 
 struct net* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fib_table*,struct fib_config*) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct nlmsghdr *nlh, void *arg)
{
	struct net *net = FUNC2(skb->sk);
	struct fib_config cfg;
	struct fib_table *tb;
	int err;

	err = FUNC1(net, skb, nlh, &cfg);
	if (err < 0)
		goto errout;

	tb = FUNC0(net, cfg.fc_table);
	if (tb == NULL) {
		err = -ESRCH;
		goto errout;
	}

	err = tb->tb_delete(tb, &cfg);
errout:
	return err;
}