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
struct ieee80211_regdomain {int /*<<< orphan*/ * alpha2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_regdomain const*) ; 

__attribute__((used)) static void FUNC2(const struct ieee80211_regdomain *rd)
{
	FUNC0("Regulatory domain: %c%c\n", rd->alpha2[0], rd->alpha2[1]);
	FUNC1(rd);
}