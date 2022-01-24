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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int /*<<< orphan*/  VDEV_TYPE_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* ZPOOL_CONFIG_CHILDREN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_IS_LOG ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_TYPE ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*,char*,size_t,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static nvlist_t *
FUNC10(char *path, char *aux, char *pool, size_t size, uint64_t ashift,
    int log, int r, int m, int t)
{
	nvlist_t *root, **child;
	int c;

	FUNC0(t > 0);

	child = FUNC8(t * sizeof (nvlist_t *), UMEM_NOFAIL);

	for (c = 0; c < t; c++) {
		child[c] = FUNC2(path, aux, pool, size, ashift,
		    r, m);
		FUNC1(FUNC5(child[c], ZPOOL_CONFIG_IS_LOG,
		    log) == 0);
	}

	FUNC1(FUNC6(&root, NV_UNIQUE_NAME, 0) == 0);
	FUNC1(FUNC4(root, ZPOOL_CONFIG_TYPE, VDEV_TYPE_ROOT) == 0);
	FUNC1(FUNC3(root, aux ? aux : ZPOOL_CONFIG_CHILDREN,
	    child, t) == 0);

	for (c = 0; c < t; c++)
		FUNC7(child[c]);

	FUNC9(child, t * sizeof (nvlist_t *));

	return (root);
}