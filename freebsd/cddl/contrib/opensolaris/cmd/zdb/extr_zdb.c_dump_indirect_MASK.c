#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int zb_blkid; } ;
typedef  TYPE_1__ zbookmark_phys_t ;
struct TYPE_9__ {int /*<<< orphan*/  dn_objset; int /*<<< orphan*/  dn_object; TYPE_3__* dn_phys; } ;
typedef  TYPE_2__ dnode_t ;
struct TYPE_10__ {int dn_nblkptr; int /*<<< orphan*/ * dn_blkptr; scalar_t__ dn_nlevels; } ;
typedef  TYPE_3__ dnode_phys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(dnode_t *dn)
{
	dnode_phys_t *dnp = dn->dn_phys;
	int j;
	zbookmark_phys_t czb;

	(void) FUNC3("Indirect blocks:\n");

	FUNC0(&czb, FUNC1(dn->dn_objset),
	    dn->dn_object, dnp->dn_nlevels - 1, 0);
	for (j = 0; j < dnp->dn_nblkptr; j++) {
		czb.zb_blkid = j;
		(void) FUNC4(FUNC2(dn->dn_objset), dnp,
		    &dnp->dn_blkptr[j], &czb);
	}

	(void) FUNC3("\n");
}