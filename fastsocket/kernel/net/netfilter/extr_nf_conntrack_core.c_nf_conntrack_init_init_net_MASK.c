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
struct hlist_head {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  use; } ;
struct TYPE_4__ {int /*<<< orphan*/  status; TYPE_1__ ct_general; int /*<<< orphan*/ * ct_net; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPS_CONFIRMED_BIT ; 
 int /*<<< orphan*/  NF_CONNTRACK_VERSION ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  init_net ; 
 int FUNC1 () ; 
 int nf_conntrack_htable_size ; 
 int nf_conntrack_max ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 TYPE_2__ nf_conntrack_untracked ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int totalram_pages ; 

__attribute__((used)) static int FUNC6(void)
{
	int max_factor = 8;
	int ret;

	/* Idea from tcp.c: use 1/16384 of memory.  On i386: 32MB
	 * machine has 512 buckets. >= 1GB machines have 16384 buckets. */
	if (!nf_conntrack_htable_size) {
		nf_conntrack_htable_size
			= (((totalram_pages << PAGE_SHIFT) / 16384)
			   / sizeof(struct hlist_head));
		if (totalram_pages > (1024 * 1024 * 1024 / PAGE_SIZE))
			nf_conntrack_htable_size = 16384;
		if (nf_conntrack_htable_size < 32)
			nf_conntrack_htable_size = 32;

		/* Use a max. factor of four by default to get the same max as
		 * with the old struct list_heads. When a table size is given
		 * we use the old value of 8 to avoid reducing the max.
		 * entries. */
		max_factor = 4;
	}
	nf_conntrack_max = max_factor * nf_conntrack_htable_size;

	FUNC4("nf_conntrack version %s (%u buckets, %d max)\n",
	       NF_CONNTRACK_VERSION, nf_conntrack_htable_size,
	       nf_conntrack_max);

	ret = FUNC3();
	if (ret < 0)
		goto err_proto;

	ret = FUNC1();
	if (ret < 0)
		goto err_helper;

	/* Set up fake conntrack: to never be deleted, not in any hashes */
#ifdef CONFIG_NET_NS
	nf_conntrack_untracked.ct_net = &init_net;
#endif
	FUNC0(&nf_conntrack_untracked.ct_general.use, 1);
	/*  - and look it like as a confirmed connection */
	FUNC5(IPS_CONFIRMED_BIT, &nf_conntrack_untracked.status);

	return 0;

err_helper:
	FUNC2();
err_proto:
	return ret;
}