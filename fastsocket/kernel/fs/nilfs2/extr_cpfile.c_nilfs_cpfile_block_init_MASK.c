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
struct nilfs_checkpoint {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {size_t mi_entry_size; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct nilfs_checkpoint*) ; 
 int FUNC3 (struct inode*) ; 

__attribute__((used)) static void FUNC4(struct inode *cpfile,
				    struct buffer_head *bh,
				    void *kaddr)
{
	struct nilfs_checkpoint *cp = kaddr + FUNC1(bh);
	size_t cpsz = FUNC0(cpfile)->mi_entry_size;
	int n = FUNC3(cpfile);

	while (n-- > 0) {
		FUNC2(cp);
		cp = (void *)cp + cpsz;
	}
}