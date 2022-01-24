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
struct TYPE_3__ {int /*<<< orphan*/  peer; int /*<<< orphan*/  idev; } ;
struct TYPE_4__ {TYPE_1__ rt; } ;
struct xfrm_dst {TYPE_2__ u; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfrm_dst*) ; 

__attribute__((used)) static void FUNC4(struct dst_entry *dst)
{
	struct xfrm_dst *xdst = (struct xfrm_dst *)dst;

	if (FUNC2(xdst->u.rt.idev))
		FUNC0(xdst->u.rt.idev);
	if (FUNC2(xdst->u.rt.peer))
		FUNC1(xdst->u.rt.peer);
	FUNC3(xdst);
}