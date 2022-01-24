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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int /*<<< orphan*/  VDEV_TYPE_MIRROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_CHILDREN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_TYPE ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*,char*,size_t,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static nvlist_t *
FUNC8(char *path, char *aux, char *pool, size_t size,
    uint64_t ashift, int r, int m)
{
	nvlist_t *mirror, **child;
	int c;

	if (m < 1)
		return (FUNC1(path, aux, pool, size, ashift, r));

	child = FUNC6(m * sizeof (nvlist_t *), UMEM_NOFAIL);

	for (c = 0; c < m; c++)
		child[c] = FUNC1(path, aux, pool, size, ashift, r);

	FUNC0(FUNC4(&mirror, NV_UNIQUE_NAME, 0) == 0);
	FUNC0(FUNC3(mirror, ZPOOL_CONFIG_TYPE,
	    VDEV_TYPE_MIRROR) == 0);
	FUNC0(FUNC2(mirror, ZPOOL_CONFIG_CHILDREN,
	    child, m) == 0);

	for (c = 0; c < m; c++)
		FUNC5(child[c]);

	FUNC7(child, m * sizeof (nvlist_t *));

	return (mirror);
}