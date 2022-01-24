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
struct nf_conntrack_expect {int dummy; } ;
struct TYPE_2__ {int htable_size; int /*<<< orphan*/  expect_vmalloc; int /*<<< orphan*/ * expect_hash; scalar_t__ expect_count; } ;
struct net {TYPE_1__ ct; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct net*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nf_ct_expect_cachep ; 
 int nf_ct_expect_hsize ; 
 int nf_ct_expect_max ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct net *net)
{
	int err = -ENOMEM;

	if (FUNC3(net, &init_net)) {
		if (!nf_ct_expect_hsize) {
			nf_ct_expect_hsize = net->ct.htable_size / 256;
			if (!nf_ct_expect_hsize)
				nf_ct_expect_hsize = 1;
		}
		nf_ct_expect_max = nf_ct_expect_hsize * 4;
	}

	net->ct.expect_count = 0;
	net->ct.expect_hash = FUNC4(&nf_ct_expect_hsize,
						  &net->ct.expect_vmalloc, 0);
	if (net->ct.expect_hash == NULL)
		goto err1;

	if (FUNC3(net, &init_net)) {
		nf_ct_expect_cachep = FUNC1("nf_conntrack_expect",
					sizeof(struct nf_conntrack_expect),
					0, 0, NULL);
		if (!nf_ct_expect_cachep)
			goto err2;
	}

	err = FUNC0(net);
	if (err < 0)
		goto err3;

	return 0;

err3:
	if (FUNC3(net, &init_net))
		FUNC2(nf_ct_expect_cachep);
err2:
	FUNC5(net->ct.expect_hash, net->ct.expect_vmalloc,
			     nf_ct_expect_hsize);
err1:
	return err;
}