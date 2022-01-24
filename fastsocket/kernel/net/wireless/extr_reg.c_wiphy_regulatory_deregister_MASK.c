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
struct regulatory_request {int /*<<< orphan*/  country_ie_env; int /*<<< orphan*/  wiphy_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENVIRON_ANY ; 
 int /*<<< orphan*/  WIPHY_IDX_INVALID ; 
 struct regulatory_request* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wiphy*) ; 
 int /*<<< orphan*/  reg_mutex ; 
 int /*<<< orphan*/  reg_num_devs_support_basehint ; 
 struct wiphy* FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct wiphy *wiphy)
{
	struct wiphy *request_wiphy = NULL;
	struct regulatory_request *lr;

	FUNC2(&reg_mutex);
	lr = FUNC0();

	if (!FUNC6(wiphy))
		reg_num_devs_support_basehint--;

	FUNC5(FUNC1(wiphy));
	FUNC4(wiphy->regd, NULL);

	if (lr)
		request_wiphy = FUNC7(lr->wiphy_idx);

	if (!request_wiphy || request_wiphy != wiphy)
		goto out;

	lr->wiphy_idx = WIPHY_IDX_INVALID;
	lr->country_ie_env = ENVIRON_ANY;
out:
	FUNC3(&reg_mutex);
}