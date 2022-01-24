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
struct nf_conntrack_l3proto {int dummy; } ;

/* Variables and functions */
 int EPROTOTYPE ; 
 struct nf_conntrack_l3proto nf_conntrack_l3proto_generic ; 
 struct nf_conntrack_l3proto* FUNC0 (unsigned short) ; 
 int FUNC1 (char*,unsigned short) ; 

int
FUNC2(unsigned short l3proto)
{
	int ret;
	struct nf_conntrack_l3proto *p;

retry:	p = FUNC0(l3proto);
	if (p == &nf_conntrack_l3proto_generic) {
		ret = FUNC1("nf_conntrack-%d", l3proto);
		if (!ret)
			goto retry;

		return -EPROTOTYPE;
	}

	return 0;
}