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
struct vport {int dummy; } ;
struct net_device {int priv_flags; int /*<<< orphan*/  ax25_ptr; } ;

/* Variables and functions */
 int IFF_OVS_DATAPATH ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

struct vport *FUNC2(struct net_device *dev)
{
	if (FUNC0(dev->priv_flags & IFF_OVS_DATAPATH))
		return (struct vport *)
			FUNC1(dev->ax25_ptr);
	else
		return NULL;
}