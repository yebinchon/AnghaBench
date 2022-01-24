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
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_FEATURE_STATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 

nvlist_t *
FUNC4(zpool_handle_t *zhp)
{
	nvlist_t *config, *features;

	config = FUNC2(zhp, NULL);

	if (config == NULL || !FUNC0(config,
	    ZPOOL_CONFIG_FEATURE_STATS)) {
		int error;
		boolean_t missing = B_FALSE;

		error = FUNC3(zhp, &missing);

		if (error != 0 || missing)
			return (NULL);

		config = FUNC2(zhp, NULL);
	}

	if (FUNC1(config, ZPOOL_CONFIG_FEATURE_STATS,
	    &features) != 0)
		return (NULL);

	return (features);
}