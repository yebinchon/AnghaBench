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
typedef  scalar_t__ tid_t ;
struct tlock {int type; scalar_t__ next; int /*<<< orphan*/  lock; int /*<<< orphan*/ * mp; struct inode* ip; int /*<<< orphan*/  flag; scalar_t__ tid; } ;
struct tblock {void* last; void* next; } ;
struct maplock {scalar_t__ index; scalar_t__ maxcnt; scalar_t__ next; } ;
struct jfs_inode_info {scalar_t__ atlhead; int /*<<< orphan*/  anon_inode_list; void* atltail; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
typedef  void* lid_t ;
struct TYPE_2__ {int /*<<< orphan*/  anon_list; } ;

/* Variables and functions */
 struct jfs_inode_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__ TxAnchor ; 
 struct tlock* FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct tblock* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  tlckDIRECTORY ; 
 int /*<<< orphan*/  tlckINODELOCK ; 
 void* FUNC7 () ; 

struct tlock *FUNC8(tid_t tid, struct inode *ip, int type)
{
	struct jfs_inode_info *jfs_ip = FUNC0(ip);
	lid_t lid;
	struct tblock *tblk;
	struct tlock *tlck;
	struct maplock *maplock;

	FUNC2();

	/*
	 * allocate a tlock
	 */
	lid = FUNC7();
	tlck = FUNC4(lid);

	/*
	 * initialize tlock
	 */
	tlck->tid = tid;

	/* bind the tlock and the object */
	tlck->flag = tlckINODELOCK;
	if (FUNC1(ip->i_mode))
		tlck->flag |= tlckDIRECTORY;
	tlck->ip = ip;
	tlck->mp = NULL;

	tlck->type = type;

	/*
	 * enqueue transaction lock to transaction/inode
	 */
	/* insert the tlock at tail of transaction tlock list */
	if (tid) {
		tblk = FUNC6(tid);
		if (tblk->next)
			FUNC4(tblk->last)->next = lid;
		else
			tblk->next = lid;
		tlck->next = 0;
		tblk->last = lid;
	}
	/* anonymous transaction:
	 * insert the tlock at head of inode anonymous tlock list
	 */
	else {
		tlck->next = jfs_ip->atlhead;
		jfs_ip->atlhead = lid;
		if (tlck->next == 0) {
			/* This inode's first anonymous transaction */
			jfs_ip->atltail = lid;
			FUNC5(&jfs_ip->anon_inode_list,
				      &TxAnchor.anon_list);
		}
	}

	FUNC3();

	/* initialize type dependent area for maplock */
	maplock = (struct maplock *) & tlck->lock;
	maplock->next = 0;
	maplock->maxcnt = 0;
	maplock->index = 0;

	return tlck;
}