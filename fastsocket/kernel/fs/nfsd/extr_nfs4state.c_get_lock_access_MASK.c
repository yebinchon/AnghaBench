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
typedef  int /*<<< orphan*/  u32 ;
struct nfs4_stateid {int /*<<< orphan*/  st_access_bmap; struct nfs4_file* st_file; } ;
struct nfs4_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs4_file*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct nfs4_stateid *lock_stp, u32 access)
{
	struct nfs4_file *fp = lock_stp->st_file;
	int oflag = FUNC1(access);

	if (FUNC3(access, &lock_stp->st_access_bmap))
		return;
	FUNC2(fp, oflag);
	FUNC0(access, &lock_stp->st_access_bmap);
}