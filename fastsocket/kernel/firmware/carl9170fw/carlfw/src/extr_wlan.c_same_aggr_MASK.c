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
struct ieee80211_hdr {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ieee80211_hdr*) ; 
 scalar_t__ FUNC1 (struct ieee80211_hdr*,struct ieee80211_hdr*) ; 

__attribute__((used)) static inline bool FUNC2(struct ieee80211_hdr *a, struct ieee80211_hdr *b)
{
	return (FUNC0(a) == FUNC0(b)) || FUNC1(a, b);
}