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
struct nf_nat_range {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef  enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;

/* Variables and functions */
 int FUNC0 (struct nf_conntrack_tuple*,struct nf_nat_range const*,int,struct nf_conn const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcp_port_rover ; 

__attribute__((used)) static bool
FUNC1(struct nf_conntrack_tuple *tuple,
		 const struct nf_nat_range *range,
		 enum nf_nat_manip_type maniptype,
		 const struct nf_conn *ct)
{
	return FUNC0(tuple, range, maniptype, ct,
					 &tcp_port_rover);
}