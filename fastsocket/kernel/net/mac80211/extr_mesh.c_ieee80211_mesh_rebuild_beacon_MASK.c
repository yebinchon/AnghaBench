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
struct ieee80211_if_mesh {int /*<<< orphan*/  mtx; int /*<<< orphan*/  beacon; } ;
struct beacon_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ieee80211_if_mesh*) ; 
 int /*<<< orphan*/  FUNC1 (struct beacon_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct beacon_data* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_head ; 

__attribute__((used)) static int
FUNC6(struct ieee80211_if_mesh *ifmsh)
{
	struct beacon_data *old_bcn;
	int ret;

	FUNC3(&ifmsh->mtx);

	old_bcn = FUNC5(ifmsh->beacon,
					    FUNC2(&ifmsh->mtx));
	ret = FUNC0(ifmsh);
	if (ret)
		/* just reuse old beacon */
		goto out;

	if (old_bcn)
		FUNC1(old_bcn, rcu_head);
out:
	FUNC4(&ifmsh->mtx);
	return ret;
}