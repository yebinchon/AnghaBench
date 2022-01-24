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
struct zone {int dummy; } ;
struct thread_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_KERNEL_STACK ; 
 int /*<<< orphan*/  FUNC0 (struct zone*,int /*<<< orphan*/ ,int) ; 
 struct zone* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct thread_info*) ; 

__attribute__((used)) static void FUNC3(struct thread_info *ti, int account)
{
	struct zone *zone = FUNC1(FUNC2(ti));

	FUNC0(zone, NR_KERNEL_STACK, account);
}