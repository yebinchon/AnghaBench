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
struct sock {int dummy; } ;
struct ipv6_pinfo {struct ipv6_fl_socklist* ipv6_fl_list; } ;
struct ipv6_fl_socklist {struct ip6_flowlabel* fl; struct ipv6_fl_socklist* next; } ;
struct ip6_flowlabel {int /*<<< orphan*/  users; int /*<<< orphan*/  lastuse; int /*<<< orphan*/  label; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  IPV6_FLOWLABEL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ipv6_pinfo* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  ip6_sk_fl_lock ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct ip6_flowlabel * FUNC4(struct sock *sk, __be32 label)
{
	struct ipv6_fl_socklist *sfl;
	struct ipv6_pinfo *np = FUNC1(sk);

	label &= IPV6_FLOWLABEL_MASK;

	FUNC2(&ip6_sk_fl_lock);
	for (sfl=np->ipv6_fl_list; sfl; sfl = sfl->next) {
		struct ip6_flowlabel *fl = sfl->fl;
		if (fl->label == label) {
			fl->lastuse = jiffies;
			FUNC0(&fl->users);
			FUNC3(&ip6_sk_fl_lock);
			return fl;
		}
	}
	FUNC3(&ip6_sk_fl_lock);
	return NULL;
}