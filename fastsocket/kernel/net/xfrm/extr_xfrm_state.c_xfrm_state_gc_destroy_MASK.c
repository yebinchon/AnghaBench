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
struct xfrm_state {TYPE_1__* type; scalar_t__ outer_mode; scalar_t__ inner_mode_iaf; scalar_t__ inner_mode; struct xfrm_state* coaddr; struct xfrm_state* encap; struct xfrm_state* calg; struct xfrm_state* ealg; struct xfrm_state* aalg; int /*<<< orphan*/  rtimer; int /*<<< orphan*/  timer; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* destructor ) (struct xfrm_state*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(struct xfrm_state *x)
{
	FUNC0(&x->timer);
	FUNC0(&x->rtimer);
	FUNC1(x->aalg);
	FUNC1(x->ealg);
	FUNC1(x->calg);
	FUNC1(x->encap);
	FUNC1(x->coaddr);
	if (x->inner_mode)
		FUNC4(x->inner_mode);
	if (x->inner_mode_iaf)
		FUNC4(x->inner_mode_iaf);
	if (x->outer_mode)
		FUNC4(x->outer_mode);
	if (x->type) {
		x->type->destructor(x);
		FUNC5(x->type);
	}
	FUNC2(x);
	FUNC1(x);
}