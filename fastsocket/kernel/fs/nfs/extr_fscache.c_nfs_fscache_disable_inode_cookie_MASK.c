#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_3__ {scalar_t__ fscache; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSCACHE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_FSCACHE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 

__attribute__((used)) static void FUNC5(struct inode *inode)
{
	FUNC1(NFS_INO_FSCACHE, &FUNC0(inode)->flags);

	if (FUNC0(inode)->fscache) {
		FUNC2(FSCACHE,
			 "NFS: nfsi 0x%p turning cache off\n", FUNC0(inode));

		/* Need to uncache any pages attached to this inode that
		 * fscache knows about before turning off the cache.
		 */
		FUNC3(FUNC0(inode)->fscache, inode);
		FUNC4(inode);
	}
}