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
typedef  int /*<<< orphan*/  u_int16_t ;
struct nf_conntrack_l3proto {int /*<<< orphan*/  me; } ;

/* Variables and functions */
 struct nf_conntrack_l3proto* FUNC0 (int /*<<< orphan*/ ) ; 
 struct nf_conntrack_l3proto nf_conntrack_l3proto_generic ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

struct nf_conntrack_l3proto *
FUNC4(u_int16_t l3proto)
{
	struct nf_conntrack_l3proto *p;

	FUNC1();
	p = FUNC0(l3proto);
	if (!FUNC3(p->me))
		p = &nf_conntrack_l3proto_generic;
	FUNC2();

	return p;
}