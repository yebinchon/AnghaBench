#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct frag_queue {int dummy; } ;
struct TYPE_4__ {int qsize; int secret_interval; int /*<<< orphan*/  frag_expire; int /*<<< orphan*/  match; int /*<<< orphan*/  skb_free; int /*<<< orphan*/ * destructor; int /*<<< orphan*/  constructor; int /*<<< orphan*/  hashfn; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  ip6_frag_init ; 
 int /*<<< orphan*/  ip6_frag_match ; 
 int /*<<< orphan*/  nf_ct_frag6_expire ; 
 int /*<<< orphan*/  nf_ct_net_ops ; 
 TYPE_1__ nf_frags ; 
 int /*<<< orphan*/  nf_hashfn ; 
 int /*<<< orphan*/  nf_skb_free ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(void)
{
	int ret = 0;

	nf_frags.hashfn = nf_hashfn;
	nf_frags.constructor = ip6_frag_init;
	nf_frags.destructor = NULL;
	nf_frags.skb_free = nf_skb_free;
	nf_frags.qsize = sizeof(struct frag_queue);
	nf_frags.match = ip6_frag_match;
	nf_frags.frag_expire = nf_ct_frag6_expire;
	nf_frags.secret_interval = 10 * 60 * HZ;
	FUNC1(&nf_frags);

	ret = FUNC2(&nf_ct_net_ops);
	if (ret)
		FUNC0(&nf_frags);

	return ret;
}