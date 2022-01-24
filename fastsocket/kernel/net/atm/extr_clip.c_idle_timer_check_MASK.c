#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int CLIP_CHECK_INTERVAL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__ clip_tbl ; 
 int /*<<< orphan*/  idle_timer ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  neigh_check_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(unsigned long dummy)
{
	FUNC2(&clip_tbl.lock);
	FUNC0(&clip_tbl, neigh_check_cb);
	FUNC1(&idle_timer, jiffies + CLIP_CHECK_INTERVAL * HZ);
	FUNC3(&clip_tbl.lock);
}