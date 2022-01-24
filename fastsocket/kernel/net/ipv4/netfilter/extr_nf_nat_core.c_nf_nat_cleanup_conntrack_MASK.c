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
struct nf_conn_nat {int /*<<< orphan*/  bysource; TYPE_1__* ct; } ;
struct nf_conn {int dummy; } ;
struct TYPE_2__ {int status; } ;

/* Variables and functions */
 int IPS_SRC_NAT_DONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NF_CT_EXT_NAT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nf_conn_nat* FUNC2 (struct nf_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nf_nat_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct nf_conn *ct)
{
	struct nf_conn_nat *nat = FUNC2(ct, NF_CT_EXT_NAT);

	if (nat == NULL || nat->ct == NULL)
		return;

	FUNC0(nat->ct->status & IPS_SRC_NAT_DONE);

	FUNC3(&nf_nat_lock);
	FUNC1(&nat->bysource);
	FUNC4(&nf_nat_lock);
}