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
struct metapage {int dummy; } ;
struct inomap {struct inode* im_ipimap; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  s64 ;
struct TYPE_2__ {int /*<<< orphan*/  l2nbperpage; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PSIZE ; 
 struct metapage* FUNC2 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct inomap * imap, int iagno, struct metapage ** mpp)
{
	struct inode *ipimap = imap->im_ipimap;
	s64 blkno;

	/* compute the logical block number of the iag. */
	blkno = FUNC0(iagno, FUNC1(ipimap->i_sb)->l2nbperpage);

	/* read the iag. */
	*mpp = FUNC2(ipimap, blkno, PSIZE, 0);
	if (*mpp == NULL) {
		return -EIO;
	}

	return (0);
}