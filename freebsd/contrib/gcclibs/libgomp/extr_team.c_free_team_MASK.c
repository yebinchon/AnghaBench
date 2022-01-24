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
struct gomp_team {int /*<<< orphan*/  master_release; int /*<<< orphan*/  barrier; int /*<<< orphan*/  work_share_lock; struct gomp_team* work_shares; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gomp_team*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4 (struct gomp_team *team)
{
  FUNC0 (team->work_shares);
  FUNC2 (&team->work_share_lock);
  FUNC1 (&team->barrier);
  FUNC3 (&team->master_release);
  FUNC0 (team);
}