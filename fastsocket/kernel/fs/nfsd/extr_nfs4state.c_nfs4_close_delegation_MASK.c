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
struct nfs4_delegation {int /*<<< orphan*/  dl_file; scalar_t__ dl_flock; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_UNLCK ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (char*,struct nfs4_delegation*) ; 
 struct file* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void
FUNC4(struct nfs4_delegation *dp)
{
	struct file *filp = FUNC1(dp->dl_file);

	FUNC0("NFSD: close_delegation dp %p\n",dp);
	if (dp->dl_flock)
		FUNC3(filp, F_UNLCK, &dp->dl_flock);
	FUNC2(dp->dl_file, O_RDONLY);
}