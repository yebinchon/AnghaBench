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
struct wiphy {int /*<<< orphan*/  regd; } ;
struct ieee80211_regdomain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ieee80211_regdomain const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reg_mutex ; 

__attribute__((used)) static const struct ieee80211_regdomain *FUNC2(struct wiphy *wiphy)
{
	return FUNC1(wiphy->regd,
					 FUNC0(&reg_mutex));
}