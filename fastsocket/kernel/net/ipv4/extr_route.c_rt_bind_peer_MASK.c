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
struct rtable {struct inet_peer* peer; int /*<<< orphan*/  rt_dst; } ;
struct inet_peer {int dummy; } ;
typedef  int /*<<< orphan*/  DEFINE_SPINLOCK ;

/* Variables and functions */
 struct inet_peer* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct inet_peer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct rtable *rt, int create)
{
	static DEFINE_SPINLOCK(rt_peer_lock);
	struct inet_peer *peer;

	peer = FUNC0(rt->rt_dst, create);

	FUNC2(&rt_peer_lock);
	if (rt->peer == NULL) {
		rt->peer = peer;
		peer = NULL;
	}
	FUNC3(&rt_peer_lock);
	if (peer)
		FUNC1(peer);
}