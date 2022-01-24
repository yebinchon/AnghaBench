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
struct packet_sock {struct packet_mclist* mclist; } ;
struct packet_mclist {int /*<<< orphan*/  ifindex; struct packet_mclist* next; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct net_device* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct packet_mclist*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct packet_mclist*,int) ; 
 struct packet_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

__attribute__((used)) static void FUNC8(struct sock *sk)
{
	struct packet_sock *po = FUNC4(sk);
	struct packet_mclist *ml;

	if (!po->mclist)
		return;

	FUNC5();
	while ((ml = po->mclist) != NULL) {
		struct net_device *dev;

		po->mclist = ml->next;
		dev = FUNC0(FUNC7(sk), ml->ifindex);
		if (dev != NULL) {
			FUNC3(dev, ml, -1);
			FUNC1(dev);
		}
		FUNC2(ml);
	}
	FUNC6();
}