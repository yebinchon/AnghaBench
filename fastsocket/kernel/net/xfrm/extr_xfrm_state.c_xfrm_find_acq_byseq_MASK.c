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
struct xfrm_state {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct xfrm_state* FUNC0 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfrm_state_lock ; 

struct xfrm_state *FUNC3(struct net *net, u32 mark, u32 seq)
{
	struct xfrm_state *x;

	FUNC1(&xfrm_state_lock);
	x = FUNC0(net, mark, seq);
	FUNC2(&xfrm_state_lock);
	return x;
}