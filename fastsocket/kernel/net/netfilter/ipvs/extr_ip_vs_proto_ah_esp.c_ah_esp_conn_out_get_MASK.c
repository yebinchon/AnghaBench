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
struct sk_buff {int dummy; } ;
struct ip_vs_protocol {int /*<<< orphan*/  name; } ;
struct ip_vs_iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct ip_vs_conn_param {int dummy; } ;
struct ip_vs_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,struct ip_vs_iphdr const*,int,struct ip_vs_conn_param*) ; 
 struct ip_vs_conn* FUNC3 (struct ip_vs_conn_param*) ; 

__attribute__((used)) static struct ip_vs_conn *
FUNC4(int af, const struct sk_buff *skb,
		    struct ip_vs_protocol *pp,
		    const struct ip_vs_iphdr *iph,
		    unsigned int proto_off,
		    int inverse)
{
	struct ip_vs_conn *cp;
	struct ip_vs_conn_param p;

	FUNC2(af, iph, inverse, &p);
	cp = FUNC3(&p);
	if (!cp) {
		FUNC1(12, "Unknown ISAKMP entry for inout packet "
			      "%s%s %s->%s\n",
			      inverse ? "ICMP+" : "",
			      pp->name,
			      FUNC0(af, &iph->saddr),
			      FUNC0(af, &iph->daddr));
	}

	return cp;
}