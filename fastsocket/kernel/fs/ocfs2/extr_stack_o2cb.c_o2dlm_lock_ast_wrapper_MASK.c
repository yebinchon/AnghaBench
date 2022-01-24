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
struct TYPE_4__ {TYPE_1__* sp_proto; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* lp_lock_ast ) (void*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__ o2cb_stack ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static void FUNC2(void *astarg)
{
	FUNC0(o2cb_stack.sp_proto == NULL);

	o2cb_stack.sp_proto->lp_lock_ast(astarg);
}