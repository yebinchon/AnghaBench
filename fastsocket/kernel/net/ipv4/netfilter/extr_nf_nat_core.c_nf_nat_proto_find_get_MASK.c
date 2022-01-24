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
typedef  int /*<<< orphan*/  u_int8_t ;
struct nf_nat_protocol {int /*<<< orphan*/  me; } ;

/* Variables and functions */
 struct nf_nat_protocol* FUNC0 (int /*<<< orphan*/ ) ; 
 struct nf_nat_protocol nf_nat_unknown_protocol ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

const struct nf_nat_protocol *
FUNC4(u_int8_t protonum)
{
	const struct nf_nat_protocol *p;

	FUNC1();
	p = FUNC0(protonum);
	if (!FUNC3(p->me))
		p = &nf_nat_unknown_protocol;
	FUNC2();

	return p;
}