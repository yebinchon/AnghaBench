#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct probe_resp {size_t len; int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int /*<<< orphan*/  probe_resp; } ;
struct TYPE_4__ {TYPE_1__ ap; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct probe_resp*,int /*<<< orphan*/ ) ; 
 struct probe_resp* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct probe_resp*) ; 
 int /*<<< orphan*/  rcu_head ; 
 struct probe_resp* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_sub_if_data *sdata,
				    const u8 *resp, size_t resp_len)
{
	struct probe_resp *new, *old;

	if (!resp || !resp_len)
		return 1;

	old = FUNC4(sdata->u.ap.probe_resp);

	new = FUNC1(sizeof(struct probe_resp) + resp_len, GFP_KERNEL);
	if (!new)
		return -ENOMEM;

	new->len = resp_len;
	FUNC2(new->data, resp, resp_len);

	FUNC3(sdata->u.ap.probe_resp, new);
	if (old)
		FUNC0(old, rcu_head);

	return 0;
}