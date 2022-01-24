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
struct inode {int i_blocks; int i_size; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {int mmu_private; scalar_t__ i_n_secs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct inode *i)
{
	if (FUNC0(i)) return /*-EPERM*/;
	FUNC4();
	FUNC1(i)->i_n_secs = 0;
	i->i_blocks = 1 + ((i->i_size + 511) >> 9);
	FUNC1(i)->mmu_private = i->i_size;
	FUNC2(i->i_sb, i->i_ino, 1, ((i->i_size + 511) >> 9));
	FUNC3(i);
	FUNC1(i)->i_n_secs = 0;
	FUNC5();
}