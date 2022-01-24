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
struct ip_vs_dest {int flags; int /*<<< orphan*/  weight; } ;
struct ip_vs_conn {scalar_t__ cport; scalar_t__ vport; scalar_t__ dport; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  daddr; int /*<<< orphan*/  af; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  caddr; int /*<<< orphan*/  protocol; struct ip_vs_dest* dest; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IP_VS_DEST_F_AVAILABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ip_vs_conn*) ; 
 scalar_t__ FUNC6 (struct ip_vs_conn*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ sysctl_ip_vs_expire_quiescent_template ; 

int FUNC9(struct ip_vs_conn *ct)
{
	struct ip_vs_dest *dest = ct->dest;

	/*
	 * Checking the dest server status.
	 */
	if ((dest == NULL) ||
	    !(dest->flags & IP_VS_DEST_F_AVAILABLE) ||
	    (sysctl_ip_vs_expire_quiescent_template &&
	     (FUNC3(&dest->weight) == 0))) {
		FUNC1(9, "check_template: dest not available for "
			      "protocol %s s:%s:%d v:%s:%d "
			      "-> d:%s:%d\n",
			      FUNC7(ct->protocol),
			      FUNC0(ct->af, &ct->caddr),
			      FUNC8(ct->cport),
			      FUNC0(ct->af, &ct->vaddr),
			      FUNC8(ct->vport),
			      FUNC0(ct->af, &ct->daddr),
			      FUNC8(ct->dport));

		/*
		 * Invalidate the connection template
		 */
		if (ct->vport != FUNC4(0xffff)) {
			if (FUNC6(ct)) {
				ct->dport = FUNC4(0xffff);
				ct->vport = FUNC4(0xffff);
				ct->cport = 0;
				FUNC5(ct);
			}
		}

		/*
		 * Simply decrease the refcnt of the template,
		 * don't restart its timer.
		 */
		FUNC2(&ct->refcnt);
		return 0;
	}
	return 1;
}