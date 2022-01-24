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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {scalar_t__ addr_len; int /*<<< orphan*/  type; } ;
struct nd_opt_hdr {int nd_opt_len; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u8 *FUNC2(struct nd_opt_hdr *p,
				      struct net_device *dev)
{
	u8 *lladdr = (u8 *)(p + 1);
	int lladdrlen = p->nd_opt_len << 3;
	int prepad = FUNC1(dev->type);
	if (lladdrlen != FUNC0(dev->addr_len + prepad))
		return NULL;
	return (lladdr + prepad);
}