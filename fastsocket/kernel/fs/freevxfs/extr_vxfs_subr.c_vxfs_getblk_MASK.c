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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  scalar_t__ daddr_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct inode *ip, sector_t iblock,
	    struct buffer_head *bp, int create)
{
	daddr_t			pblock;

	pblock = FUNC1(ip, iblock);
	if (pblock != 0) {
		FUNC0(bp, ip->i_sb, pblock);
		return 0;
	}

	return -EIO;
}