#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct nfs_unlinkdata {TYPE_1__* dir; } ;
struct TYPE_2__ {struct super_block* i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_unlinkdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 

__attribute__((used)) static void FUNC3(void *calldata)
{
	struct nfs_unlinkdata	*data = calldata;
	struct super_block *sb = data->dir->i_sb;

	FUNC0(data->dir);
	FUNC1(data);
	FUNC2(sb);
}