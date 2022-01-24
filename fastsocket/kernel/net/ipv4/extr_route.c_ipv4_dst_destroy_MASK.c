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
struct rtable {struct in_device* idev; struct inet_peer* peer; } ;
struct inet_peer {int dummy; } ;
struct in_device {int dummy; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct inet_peer*) ; 

__attribute__((used)) static void FUNC2(struct dst_entry *dst)
{
	struct rtable *rt = (struct rtable *) dst;
	struct inet_peer *peer = rt->peer;
	struct in_device *idev = rt->idev;

	if (peer) {
		rt->peer = NULL;
		FUNC1(peer);
	}

	if (idev) {
		rt->idev = NULL;
		FUNC0(idev);
	}
}