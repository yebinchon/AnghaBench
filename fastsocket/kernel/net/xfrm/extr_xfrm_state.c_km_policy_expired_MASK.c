#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct xfrm_policy {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  km_waitq; } ;
struct net {TYPE_2__ xfrm; } ;
struct TYPE_3__ {int hard; } ;
struct km_event {int /*<<< orphan*/  event; int /*<<< orphan*/  pid; TYPE_1__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFRM_MSG_POLEXPIRE ; 
 int /*<<< orphan*/  FUNC0 (struct xfrm_policy*,int,struct km_event*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct net* FUNC2 (struct xfrm_policy*) ; 

void FUNC3(struct xfrm_policy *pol, int dir, int hard, u32 pid)
{
	struct net *net = FUNC2(pol);
	struct km_event c;

	c.data.hard = hard;
	c.pid = pid;
	c.event = XFRM_MSG_POLEXPIRE;
	FUNC0(pol, dir, &c);

	if (hard)
		FUNC1(&net->xfrm.km_waitq);
}