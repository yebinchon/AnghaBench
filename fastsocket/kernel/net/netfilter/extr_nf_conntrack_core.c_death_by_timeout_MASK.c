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
struct nf_conn {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPCT_DESTROY ; 
 int /*<<< orphan*/  IPS_DYING_BIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(unsigned long ul_conntrack)
{
	struct nf_conn *ct = (void *)ul_conntrack;

	if (!FUNC5(IPS_DYING_BIT, &ct->status) &&
	    FUNC6(FUNC0(IPCT_DESTROY, ct) < 0)) {
		/* destroy event was not delivered */
		FUNC1(ct);
		FUNC2(ct);
		return;
	}
	FUNC4(IPS_DYING_BIT, &ct->status);
	FUNC1(ct);
	FUNC3(ct);
}