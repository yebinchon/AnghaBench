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
struct sk_buff {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 int NF_ACCEPT ; 
 int /*<<< orphan*/  nf_ct_generic_timeout ; 
 int /*<<< orphan*/  FUNC0 (struct nf_conn*,int,struct sk_buff const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct nf_conn *ct,
		  const struct sk_buff *skb,
		  unsigned int dataoff,
		  enum ip_conntrack_info ctinfo,
		  u_int8_t pf,
		  unsigned int hooknum)
{
	FUNC0(ct, ctinfo, skb, nf_ct_generic_timeout);
	return NF_ACCEPT;
}