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
typedef  size_t u_int8_t ;
typedef  size_t u_int16_t ;
struct nf_conntrack_l4proto {int dummy; } ;

/* Variables and functions */
 size_t AF_MAX ; 
 struct nf_conntrack_l4proto nf_conntrack_l4proto_generic ; 
 int /*<<< orphan*/ ** nf_ct_protos ; 
 struct nf_conntrack_l4proto* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 

struct nf_conntrack_l4proto *
FUNC2(u_int16_t l3proto, u_int8_t l4proto)
{
	if (FUNC1(l3proto >= AF_MAX || nf_ct_protos[l3proto] == NULL))
		return &nf_conntrack_l4proto_generic;

	return FUNC0(nf_ct_protos[l3proto][l4proto]);
}