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
struct ieee80211_regdomain {int /*<<< orphan*/  alpha2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 struct ieee80211_regdomain* FUNC1 () ; 

__attribute__((used)) static bool FUNC2(const char *alpha2)
{
	const struct ieee80211_regdomain *r = FUNC1();

	if (!r)
		return true;
	return !FUNC0(r->alpha2, alpha2);
}