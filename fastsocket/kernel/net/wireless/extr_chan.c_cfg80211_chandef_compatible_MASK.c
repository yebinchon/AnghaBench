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
typedef  scalar_t__ u32 ;
struct cfg80211_chan_def {scalar_t__ chan; scalar_t__ width; } ;

/* Variables and functions */
 scalar_t__ NL80211_CHAN_WIDTH_20 ; 
 scalar_t__ NL80211_CHAN_WIDTH_20_NOHT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct cfg80211_chan_def const*,struct cfg80211_chan_def const*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfg80211_chan_def const*,scalar_t__*,scalar_t__*) ; 

const struct cfg80211_chan_def *
FUNC3(const struct cfg80211_chan_def *c1,
			    const struct cfg80211_chan_def *c2)
{
	u32 c1_pri40, c1_pri80, c2_pri40, c2_pri80;

	/* If they are identical, return */
	if (FUNC1(c1, c2))
		return c1;

	/* otherwise, must have same control channel */
	if (c1->chan != c2->chan)
		return NULL;

	/*
	 * If they have the same width, but aren't identical,
	 * then they can't be compatible.
	 */
	if (c1->width == c2->width)
		return NULL;

	if (c1->width == NL80211_CHAN_WIDTH_20_NOHT ||
	    c1->width == NL80211_CHAN_WIDTH_20)
		return c2;

	if (c2->width == NL80211_CHAN_WIDTH_20_NOHT ||
	    c2->width == NL80211_CHAN_WIDTH_20)
		return c1;

	FUNC2(c1, &c1_pri40, &c1_pri80);
	FUNC2(c2, &c2_pri40, &c2_pri80);

	if (c1_pri40 != c2_pri40)
		return NULL;

	FUNC0(!c1_pri80 && !c2_pri80);
	if (c1_pri80 && c2_pri80 && c1_pri80 != c2_pri80)
		return NULL;

	if (c1->width > c2->width)
		return c1;
	return c2;
}