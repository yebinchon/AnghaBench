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
struct nf_conn {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conn*) ; 
 int /*<<< orphan*/  delete_list ; 
 int /*<<< orphan*/  nf_conntrack_lock ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conn*) ; 
 struct net* FUNC3 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct nf_conn *ct)
{
	struct net *net = FUNC3(ct);

	FUNC2(ct);
	FUNC4(&nf_conntrack_lock);
	/* Inside lock so preempt is disabled on module removal path.
	 * Otherwise we can get spurious warnings. */
	FUNC0(net, delete_list);
	FUNC1(ct);
	FUNC5(&nf_conntrack_lock);
}