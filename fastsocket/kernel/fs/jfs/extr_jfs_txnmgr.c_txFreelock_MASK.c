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
struct tlock {int flag; scalar_t__ next; } ;
struct jfs_inode_info {int /*<<< orphan*/  anon_inode_list; scalar_t__ atltail; scalar_t__ atlhead; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ lid_t ;

/* Variables and functions */
 struct jfs_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct tlock* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int tlckFREELOCK ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

void FUNC6(struct inode *ip)
{
	struct jfs_inode_info *jfs_ip = FUNC0(ip);
	struct tlock *xtlck, *tlck;
	lid_t xlid = 0, lid;

	if (!jfs_ip->atlhead)
		return;

	FUNC1();
	xtlck = (struct tlock *) &jfs_ip->atlhead;

	while ((lid = xtlck->next) != 0) {
		tlck = FUNC3(lid);
		if (tlck->flag & tlckFREELOCK) {
			xtlck->next = tlck->next;
			FUNC5(lid);
		} else {
			xtlck = tlck;
			xlid = lid;
		}
	}

	if (jfs_ip->atlhead)
		jfs_ip->atltail = xlid;
	else {
		jfs_ip->atltail = 0;
		/*
		 * If inode was on anon_list, remove it
		 */
		FUNC4(&jfs_ip->anon_inode_list);
	}
	FUNC2();
}