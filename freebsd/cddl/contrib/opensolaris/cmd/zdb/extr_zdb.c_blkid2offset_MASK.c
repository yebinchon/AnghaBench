#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int zb_level; scalar_t__ zb_object; int zb_blkid; } ;
typedef  TYPE_1__ zbookmark_phys_t ;
typedef  int uint64_t ;
struct TYPE_6__ {int dn_indblkshift; int dn_datablkszsec; } ;
typedef  TYPE_2__ dnode_phys_t ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int SPA_BLKPTRSHIFT ; 
 int SPA_MINBLOCKSHIFT ; 

__attribute__((used)) static uint64_t
FUNC2(const dnode_phys_t *dnp, const blkptr_t *bp,
    const zbookmark_phys_t *zb)
{
	if (dnp == NULL) {
		FUNC0(zb->zb_level < 0);
		if (zb->zb_object == 0)
			return (zb->zb_blkid);
		return (zb->zb_blkid * FUNC1(bp));
	}

	FUNC0(zb->zb_level >= 0);

	return ((zb->zb_blkid <<
	    (zb->zb_level * (dnp->dn_indblkshift - SPA_BLKPTRSHIFT))) *
	    dnp->dn_datablkszsec << SPA_MINBLOCKSHIFT);
}