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
typedef  int /*<<< orphan*/  u8 ;
struct mesh_path {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;

/* Variables and functions */
 struct mesh_path* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  mpp_paths ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

struct mesh_path *
FUNC2(struct ieee80211_sub_if_data *sdata, const u8 *dst)
{
	return FUNC0(FUNC1(mpp_paths), dst, sdata);
}