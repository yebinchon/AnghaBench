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
typedef  int /*<<< orphan*/  u32 ;
struct subscriber {int /*<<< orphan*/ * lock; } ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct subscriber*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *usr_handle,
				       u32 port_ref,
				       struct sk_buff **buf,
				       unsigned char const *data,
				       unsigned int size,
				       int reason)
{
	struct subscriber *subscriber = usr_handle;
	spinlock_t *subscriber_lock;

	if (FUNC2(port_ref) == NULL)
		return;

	subscriber_lock = subscriber->lock;
	FUNC1(subscriber);
	FUNC0(subscriber_lock);
}