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
struct nf_conn_nat {int /*<<< orphan*/  bysource; struct nf_conn* ct; } ;
struct nf_conn {int status; } ;

/* Variables and functions */
 int IPS_SRC_NAT_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_nat_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *new, void *old)
{
	struct nf_conn_nat *new_nat = new;
	struct nf_conn_nat *old_nat = old;
	struct nf_conn *ct = old_nat->ct;

	if (!ct || !(ct->status & IPS_SRC_NAT_DONE))
		return;

	FUNC1(&nf_nat_lock);
	FUNC0(&old_nat->bysource, &new_nat->bysource);
	FUNC2(&nf_nat_lock);
}