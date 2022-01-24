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
struct net {int dummy; } ;
struct dst_entry {struct dst_entry* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfrm_policy_sk_bundle_lock ; 
 struct dst_entry* xfrm_policy_sk_bundles ; 

__attribute__((used)) static void FUNC3(struct net *net)
{
	struct dst_entry *head, *next;

	FUNC1(&xfrm_policy_sk_bundle_lock);
	head = xfrm_policy_sk_bundles;
	xfrm_policy_sk_bundles = NULL;
	FUNC2(&xfrm_policy_sk_bundle_lock);

	while (head) {
		next = head->next;
		FUNC0(head);
		head = next;
	}
}