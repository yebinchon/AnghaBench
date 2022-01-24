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
struct udphdr {int /*<<< orphan*/  dest; } ;
struct sk_buff {int /*<<< orphan*/  mark; } ;
struct ip_vs_service {int dummy; } ;
struct ip_vs_protocol {int dummy; } ;
struct ip_vs_iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  protocol; int /*<<< orphan*/  len; } ;
struct ip_vs_conn {int dummy; } ;
typedef  int /*<<< orphan*/  _udph ;

/* Variables and functions */
 int NF_DROP ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,struct ip_vs_iphdr*) ; 
 int FUNC1 (struct ip_vs_service*,struct sk_buff*,struct ip_vs_protocol*) ; 
 struct ip_vs_conn* FUNC2 (struct ip_vs_service*,struct sk_buff*) ; 
 struct ip_vs_service* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_vs_service*) ; 
 scalar_t__ FUNC5 () ; 
 struct udphdr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int,struct udphdr*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static int
FUNC8(int af, struct sk_buff *skb, struct ip_vs_protocol *pp,
		  int *verdict, struct ip_vs_conn **cpp)
{
	struct ip_vs_service *svc;
	struct udphdr _udph, *uh;
	struct ip_vs_iphdr iph;

	FUNC0(af, FUNC7(skb), &iph);

	uh = FUNC6(skb, iph.len, sizeof(_udph), &_udph);
	if (uh == NULL) {
		*verdict = NF_DROP;
		return 0;
	}

	svc = FUNC3(af, skb->mark, iph.protocol,
				&iph.daddr, uh->dest);
	if (svc) {
		if (FUNC5()) {
			/*
			 * It seems that we are very loaded.
			 * We have to drop this packet :(
			 */
			FUNC4(svc);
			*verdict = NF_DROP;
			return 0;
		}

		/*
		 * Let the virtual server select a real server for the
		 * incoming connection, and create a connection entry.
		 */
		*cpp = FUNC2(svc, skb);
		if (!*cpp) {
			*verdict = FUNC1(svc, skb, pp);
			return 0;
		}
		FUNC4(svc);
	}
	return 1;
}