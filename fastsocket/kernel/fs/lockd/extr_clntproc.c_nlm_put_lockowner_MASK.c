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
struct nlm_lockowner {TYPE_1__* host; int /*<<< orphan*/  list; int /*<<< orphan*/  count; } ;
struct TYPE_2__ {int /*<<< orphan*/  h_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nlm_lockowner*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct nlm_lockowner *lockowner)
{
	if (!FUNC0(&lockowner->count, &lockowner->host->h_lock))
		return;
	FUNC2(&lockowner->list);
	FUNC4(&lockowner->host->h_lock);
	FUNC3(lockowner->host);
	FUNC1(lockowner);
}