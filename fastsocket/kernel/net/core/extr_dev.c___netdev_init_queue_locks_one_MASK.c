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
struct netdev_queue {int xmit_lock_owner; int /*<<< orphan*/  _xmit_lock; } ;
struct net_device {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev,
					  struct netdev_queue *dev_queue,
					  void *_unused)
{
	FUNC1(&dev_queue->_xmit_lock);
	FUNC0(&dev_queue->_xmit_lock, dev->type);
	dev_queue->xmit_lock_owner = -1;
}