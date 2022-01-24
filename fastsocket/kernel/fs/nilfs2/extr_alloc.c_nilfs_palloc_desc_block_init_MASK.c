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
struct nilfs_palloc_group_desc {int /*<<< orphan*/  pg_nfrees; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 unsigned long FUNC3 (struct inode*) ; 

__attribute__((used)) static void FUNC4(struct inode *inode,
					 struct buffer_head *bh, void *kaddr)
{
	struct nilfs_palloc_group_desc *desc = kaddr + FUNC0(bh);
	unsigned long n = FUNC3(inode);
	__le32 nfrees;

	nfrees = FUNC1(FUNC2(inode));
	while (n-- > 0) {
		desc->pg_nfrees = nfrees;
		desc++;
	}
}