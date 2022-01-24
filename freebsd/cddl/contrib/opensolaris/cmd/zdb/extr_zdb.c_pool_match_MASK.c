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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int B_FALSE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static boolean_t
FUNC4(nvlist_t *cfg, char *tgt)
{
	uint64_t v, guid = FUNC3(tgt, NULL, 0);
	char *s;

	if (guid != 0) {
		if (FUNC1(cfg, ZPOOL_CONFIG_POOL_GUID, &v) == 0)
			return (v == guid);
	} else {
		if (FUNC0(cfg, ZPOOL_CONFIG_POOL_NAME, &s) == 0)
			return (FUNC2(s, tgt) == 0);
	}
	return (B_FALSE);
}