#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t lid_t ;
struct TYPE_4__ {size_t freelock; scalar_t__ tlocksInUse; int /*<<< orphan*/  freelockwait; int /*<<< orphan*/  lowlockwait; } ;
struct TYPE_3__ {size_t next; scalar_t__ tid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__ TxAnchor ; 
 TYPE_1__* TxLock ; 
 scalar_t__ TxLockLWM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ jfs_tlocks_low ; 

__attribute__((used)) static void FUNC2(lid_t lid)
{
	TxLock[lid].tid = 0;
	TxLock[lid].next = TxAnchor.freelock;
	TxAnchor.freelock = lid;
	TxAnchor.tlocksInUse--;
	if (jfs_tlocks_low && (TxAnchor.tlocksInUse < TxLockLWM)) {
		FUNC1("txLockFree jfs_tlocks_low no more");
		jfs_tlocks_low = 0;
		FUNC0(&TxAnchor.lowlockwait);
	}
	FUNC0(&TxAnchor.freelockwait);
}