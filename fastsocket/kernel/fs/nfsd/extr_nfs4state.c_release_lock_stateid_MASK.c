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
struct nfs4_stateid {scalar_t__ st_stateowner; int /*<<< orphan*/  st_file; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  fl_owner_t ;

/* Variables and functions */
 struct file* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_stateid*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs4_stateid*) ; 

__attribute__((used)) static void FUNC4(struct nfs4_stateid *stp)
{
	struct file *file;

	FUNC3(stp);
	file = FUNC0(stp->st_file);
	if (file)
		FUNC2(file, (fl_owner_t)stp->st_stateowner);
	FUNC1(stp);
}