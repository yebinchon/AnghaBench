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
struct nf_conntrack_l3proto {int /*<<< orphan*/  me; } ;

/* Variables and functions */
 struct nf_conntrack_l3proto* FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(unsigned short l3proto)
{
	struct nf_conntrack_l3proto *p;

	/* rcu_read_lock not necessary since the caller holds a reference */
	p = FUNC0(l3proto);
	FUNC1(p->me);
}