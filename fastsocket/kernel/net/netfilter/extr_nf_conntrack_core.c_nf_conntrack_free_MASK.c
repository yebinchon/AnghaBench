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
struct nf_conn {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nf_conntrack_cachep; int /*<<< orphan*/  count; } ;
struct net {TYPE_1__ ct; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_conn*) ; 
 struct net* FUNC4 (struct nf_conn*) ; 

void FUNC5(struct nf_conn *ct)
{
	struct net *net = FUNC4(ct);

	FUNC2(ct);
	FUNC0(&net->ct.count);
	FUNC3(ct);
	FUNC1(net->ct.nf_conntrack_cachep, ct);
}