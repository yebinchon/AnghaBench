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
struct nf_nat_protocol {size_t protonum; } ;

/* Variables and functions */
 int /*<<< orphan*/  nf_nat_lock ; 
 int /*<<< orphan*/ * nf_nat_protos ; 
 int /*<<< orphan*/  nf_nat_unknown_protocol ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(const struct nf_nat_protocol *proto)
{
	FUNC1(&nf_nat_lock);
	FUNC0(nf_nat_protos[proto->protonum],
			   &nf_nat_unknown_protocol);
	FUNC2(&nf_nat_lock);
	FUNC3();
}