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
struct TYPE_4__ {int td_nextid; int td_curvgen; int /*<<< orphan*/  td_mergelock; void* td_iihash; void* td_idhash; void* td_layouthash; } ;
typedef  TYPE_1__ tdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  IIDESC_HASH_SIZE ; 
 int /*<<< orphan*/  TDATA_ID_HASH_SIZE ; 
 int /*<<< orphan*/  TDATA_LAYOUT_HASH_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iidesc_hash ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * tdesc_idcmp ; 
 int /*<<< orphan*/  tdesc_idhash ; 
 int /*<<< orphan*/ * tdesc_layoutcmp ; 
 int /*<<< orphan*/  tdesc_layouthash ; 
 TYPE_1__* FUNC2 (int) ; 

tdata_t *
FUNC3(void)
{
	tdata_t *new = FUNC2(sizeof (tdata_t));

	new->td_layouthash = FUNC0(TDATA_LAYOUT_HASH_SIZE, tdesc_layouthash,
	    tdesc_layoutcmp);
	new->td_idhash = FUNC0(TDATA_ID_HASH_SIZE, tdesc_idhash,
	    tdesc_idcmp);
	/*
	 * This is also traversed as a list, but amortized O(1)
	 * lookup massively impacts part of the merge phase, so
	 * we store the iidescs as a hash.
	 */
	new->td_iihash = FUNC0(IIDESC_HASH_SIZE, iidesc_hash, NULL);
	new->td_nextid = 1;
	new->td_curvgen = 1;

	FUNC1(&new->td_mergelock, NULL);

	return (new);
}