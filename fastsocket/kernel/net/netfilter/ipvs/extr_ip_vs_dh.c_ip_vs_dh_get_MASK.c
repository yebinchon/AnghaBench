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
typedef  union nf_inet_addr {int dummy; } nf_inet_addr ;
struct ip_vs_dh_bucket {struct ip_vs_dest* dest; } ;
struct ip_vs_dest {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int,union nf_inet_addr const*) ; 

__attribute__((used)) static inline struct ip_vs_dest *
FUNC1(int af, struct ip_vs_dh_bucket *tbl,
	     const union nf_inet_addr *addr)
{
	return (tbl[FUNC0(af, addr)]).dest;
}