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
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_4__ {int /*<<< orphan*/  jinode; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_journal; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(struct inode *inode,
					      loff_t new_size)
{
	return FUNC2(
					FUNC1(inode->i_sb)->s_journal,
					&FUNC0(inode)->jinode,
					new_size);
}