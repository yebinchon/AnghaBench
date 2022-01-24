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
struct ieee80211_sub_if_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*) ; 
 int FUNC2 (struct ieee80211_sub_if_data*) ; 

__attribute__((used)) static inline int FUNC3(struct ieee80211_sub_if_data *sdata)
{
	int ret = FUNC2(sdata);

	FUNC0();
	FUNC1(sdata);

	return ret;
}