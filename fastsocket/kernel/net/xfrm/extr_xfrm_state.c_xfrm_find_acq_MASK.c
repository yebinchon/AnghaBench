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
typedef  int /*<<< orphan*/  xfrm_address_t ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct xfrm_state {int dummy; } ;
struct xfrm_mark {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct xfrm_state* FUNC0 (struct net*,struct xfrm_mark*,unsigned short,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfrm_state_lock ; 

struct xfrm_state *
FUNC3(struct net *net, struct xfrm_mark *mark, u8 mode, u32 reqid, u8 proto,
	      xfrm_address_t *daddr, xfrm_address_t *saddr,
	      int create, unsigned short family)
{
	struct xfrm_state *x;

	FUNC1(&xfrm_state_lock);
	x = FUNC0(net, mark, family, mode, reqid, proto, daddr, saddr, create);
	FUNC2(&xfrm_state_lock);

	return x;
}