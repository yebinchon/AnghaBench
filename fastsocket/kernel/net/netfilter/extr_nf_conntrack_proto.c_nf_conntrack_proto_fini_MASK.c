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

/* Variables and functions */
 unsigned int PF_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nf_conntrack_l4proto_generic ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * nf_ct_protos ; 

void FUNC2(void)
{
	unsigned int i;

	FUNC1(&nf_conntrack_l4proto_generic);

	/* free l3proto protocol tables */
	for (i = 0; i < PF_MAX; i++)
		FUNC0(nf_ct_protos[i]);
}