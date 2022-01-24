#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint_t ;
struct TYPE_4__ {scalar_t__ zprl_parity; scalar_t__ zprl_children; int /*<<< orphan*/  zprl_type; } ;
typedef  TYPE_1__ replication_level_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_CHILDREN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,scalar_t__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int
FUNC9(nvlist_t *config, nvlist_t *newroot)
{
	nvlist_t **child;
	uint_t	children;
	replication_level_t *current = NULL, *new;
	int ret;

	/*
	 * If we have a current pool configuration, check to see if it's
	 * self-consistent.  If not, simply return success.
	 */
	if (config != NULL) {
		nvlist_t *nvroot;

		FUNC8(FUNC4(config, ZPOOL_CONFIG_VDEV_TREE,
		    &nvroot) == 0);
		if ((current = FUNC1(nvroot, B_FALSE)) == NULL)
			return (0);
	}
	/*
	 * for spares there may be no children, and therefore no
	 * replication level to check
	 */
	if ((FUNC5(newroot, ZPOOL_CONFIG_CHILDREN,
	    &child, &children) != 0) || (children == 0)) {
		FUNC0(current);
		return (0);
	}

	/*
	 * If all we have is logs then there's no replication level to check.
	 */
	if (FUNC3(newroot) == children) {
		FUNC0(current);
		return (0);
	}

	/*
	 * Get the replication level of the new vdev spec, reporting any
	 * inconsistencies found.
	 */
	if ((new = FUNC1(newroot, B_TRUE)) == NULL) {
		FUNC0(current);
		return (-1);
	}

	/*
	 * Check to see if the new vdev spec matches the replication level of
	 * the current pool.
	 */
	ret = 0;
	if (current != NULL) {
		if (FUNC6(current->zprl_type, new->zprl_type) != 0) {
			FUNC7(FUNC2(
			    "mismatched replication level: pool uses %s "
			    "and new vdev is %s\n"),
			    current->zprl_type, new->zprl_type);
			ret = -1;
		} else if (current->zprl_parity != new->zprl_parity) {
			FUNC7(FUNC2(
			    "mismatched replication level: pool uses %llu "
			    "device parity and new vdev uses %llu\n"),
			    current->zprl_parity, new->zprl_parity);
			ret = -1;
		} else if (current->zprl_children != new->zprl_children) {
			FUNC7(FUNC2(
			    "mismatched replication level: pool uses %llu-way "
			    "%s and new vdev uses %llu-way %s\n"),
			    current->zprl_children, current->zprl_type,
			    new->zprl_children, new->zprl_type);
			ret = -1;
		}
	}

	FUNC0(new);
	if (current != NULL)
		FUNC0(current);

	return (ret);
}