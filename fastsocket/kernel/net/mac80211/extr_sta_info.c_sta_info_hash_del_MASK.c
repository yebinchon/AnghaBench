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
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct sta_info {int /*<<< orphan*/  hnext; TYPE_1__ sta; } ;
struct ieee80211_local {int /*<<< orphan*/  sta_mtx; int /*<<< orphan*/ * sta_hash; } ;

/* Variables and functions */
 int ENOENT ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sta_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sta_info* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_local *local,
			     struct sta_info *sta)
{
	struct sta_info *s;

	s = FUNC4(local->sta_hash[FUNC0(sta->sta.addr)],
				      FUNC1(&local->sta_mtx));
	if (!s)
		return -ENOENT;
	if (s == sta) {
		FUNC3(local->sta_hash[FUNC0(sta->sta.addr)],
				   s->hnext);
		return 0;
	}

	while (FUNC2(s->hnext) &&
	       FUNC2(s->hnext) != sta)
		s = FUNC4(s->hnext,
					FUNC1(&local->sta_mtx));
	if (FUNC2(s->hnext)) {
		FUNC3(s->hnext, sta->hnext);
		return 0;
	}

	return -ENOENT;
}