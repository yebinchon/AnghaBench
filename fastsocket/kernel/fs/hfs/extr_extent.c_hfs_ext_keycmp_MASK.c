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
struct TYPE_5__ {scalar_t__ FNum; scalar_t__ FkType; scalar_t__ FABN; } ;
struct TYPE_6__ {TYPE_1__ ext; } ;
typedef  TYPE_2__ btree_key ;
typedef  scalar_t__ __be32 ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

int FUNC2(const btree_key *key1, const btree_key *key2)
{
	__be32 fnum1, fnum2;
	__be16 block1, block2;

	fnum1 = key1->ext.FNum;
	fnum2 = key2->ext.FNum;
	if (fnum1 != fnum2)
		return FUNC1(fnum1) < FUNC1(fnum2) ? -1 : 1;
	if (key1->ext.FkType != key2->ext.FkType)
		return key1->ext.FkType < key2->ext.FkType ? -1 : 1;

	block1 = key1->ext.FABN;
	block2 = key2->ext.FABN;
	if (block1 == block2)
		return 0;
	return FUNC0(block1) < FUNC0(block2) ? -1 : 1;
}