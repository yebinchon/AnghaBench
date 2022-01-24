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
struct inode {int dummy; } ;
struct cpu_key {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  k_objectid; int /*<<< orphan*/  k_dir_id; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpu_key*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct cpu_key *key, struct inode *inode, loff_t offset,
		  int type, int length)
{
	FUNC1(key, FUNC2(inode),
		      FUNC3(FUNC0(inode)->k_dir_id),
		      FUNC3(FUNC0(inode)->k_objectid), offset, type,
		      length);
}