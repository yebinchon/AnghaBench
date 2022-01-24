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
typedef  int /*<<< orphan*/  unchar ;
typedef  int u32 ;
struct tipc_subscr {int dummy; } ;
struct subscription {int dummy; } ;
struct subscriber {int /*<<< orphan*/ * lock; } ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct subscription* FUNC1 (struct tipc_subscr*,struct subscriber*) ; 
 int /*<<< orphan*/  FUNC2 (struct subscriber*) ; 
 int /*<<< orphan*/  FUNC3 (struct subscription*) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(void *usr_handle,
				  u32 port_ref,
				  struct sk_buff **buf,
				  const unchar *data,
				  u32 size)
{
	struct subscriber *subscriber = usr_handle;
	spinlock_t *subscriber_lock;
	struct subscription *sub;

	/*
	 * Lock subscriber's server port (& make a local copy of lock pointer,
	 * in case subscriber is deleted while processing subscription request)
	 */

	if (FUNC4(port_ref) == NULL)
		return;

	subscriber_lock = subscriber->lock;

	if (size != sizeof(struct tipc_subscr)) {
		FUNC2(subscriber);
		FUNC0(subscriber_lock);
	} else {
		sub = FUNC1((struct tipc_subscr *)data, subscriber);
		FUNC0(subscriber_lock);
		if (sub != NULL) {

			/*
			 * We must release the server port lock before adding a
			 * subscription to the name table since TIPC needs to be
			 * able to (re)acquire the port lock if an event message
			 * issued by the subscription process is rejected and
			 * returned.  The subscription cannot be deleted while
			 * it is being added to the name table because:
			 * a) the single-threading of the native API port code
			 *    ensures the subscription cannot be cancelled and
			 *    the subscriber connection cannot be broken, and
			 * b) the name table lock ensures the subscription
			 *    timeout code cannot delete the subscription,
			 * so the subscription object is still protected.
			 */

			FUNC3(sub);
		}
	}
}