#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {scalar_t__ parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ifla_vf_vlan {int dummy; } ;
struct ifla_vf_tx_rate {int dummy; } ;
struct ifla_vf_mac {int dummy; } ;

/* Variables and functions */
 int RTEXT_FILTER_VF ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static inline int FUNC3(const struct net_device *dev,
				   u32 ext_filter_mask)
{
	if (dev->dev.parent && FUNC0(dev->dev.parent) &&
	    (ext_filter_mask & RTEXT_FILTER_VF)) {
		int num_vfs = FUNC1(dev->dev.parent);
		size_t size = FUNC2(sizeof(struct nlattr));
		size += FUNC2(num_vfs * sizeof(struct nlattr));
		size += num_vfs *
			(FUNC2(sizeof(struct ifla_vf_mac)) +
			 FUNC2(sizeof(struct ifla_vf_vlan)) +
			 FUNC2(sizeof(struct ifla_vf_tx_rate)));
		return size;
	} else
		return 0;
}