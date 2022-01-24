#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zilog_t ;
struct TYPE_8__ {int zdde_ref_blocks; int /*<<< orphan*/  zdde_ref_dsize; int /*<<< orphan*/  zdde_ref_psize; int /*<<< orphan*/  zdde_ref_lsize; int /*<<< orphan*/  zdde_key; } ;
typedef  TYPE_1__ zdb_ddt_entry_t ;
struct TYPE_9__ {scalar_t__ zb_level; scalar_t__ zb_objset; } ;
typedef  TYPE_2__ zbookmark_phys_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  dnode_phys_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;
typedef  int /*<<< orphan*/  avl_index_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 scalar_t__ ZB_ROOT_LEVEL ; 
 scalar_t__ ZIO_CHECKSUM_OFF ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int* dump_opt ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC15 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(spa_t *spa, zilog_t *zilog, const blkptr_t *bp,
    const zbookmark_phys_t *zb, const dnode_phys_t *dnp, void *arg)
{
	avl_tree_t *t = arg;
	avl_index_t where;
	zdb_ddt_entry_t *zdde, zdde_search;

	if (bp == NULL || FUNC7(bp) || FUNC6(bp))
		return (0);

	if (dump_opt['S'] > 1 && zb->zb_level == ZB_ROOT_LEVEL) {
		(void) FUNC14("traversing objset %llu, %llu objects, "
		    "%lu blocks so far\n",
		    (u_longlong_t)zb->zb_objset,
		    (u_longlong_t)FUNC1(bp),
		    FUNC11(t));
	}

	if (FUNC7(bp) || FUNC0(bp) == ZIO_CHECKSUM_OFF ||
	    FUNC2(bp) > 0 || FUNC8(FUNC5(bp)))
		return (0);

	FUNC13(&zdde_search.zdde_key, bp);

	zdde = FUNC9(t, &zdde_search, &where);

	if (zdde == NULL) {
		zdde = FUNC15(sizeof (*zdde), UMEM_NOFAIL);
		zdde->zdde_key = zdde_search.zdde_key;
		FUNC10(t, zdde, where);
	}

	zdde->zdde_ref_blocks += 1;
	zdde->zdde_ref_lsize += FUNC3(bp);
	zdde->zdde_ref_psize += FUNC4(bp);
	zdde->zdde_ref_dsize += FUNC12(spa, bp);

	return (0);
}