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
struct xfrm_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfrm_state_lock ; 

void FUNC4(struct xfrm_state *x)
{
	FUNC2(&xfrm_state_lock);
	FUNC0(x);
	FUNC1(x);
	FUNC3(&xfrm_state_lock);
}