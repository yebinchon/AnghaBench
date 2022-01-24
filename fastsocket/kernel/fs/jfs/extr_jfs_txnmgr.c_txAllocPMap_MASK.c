#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int flag; } ;
typedef  TYPE_1__ xad_t ;
typedef  int /*<<< orphan*/  ulong ;
struct xdlistlock {int count; TYPE_1__* xdlist; } ;
struct tblock {int dummy; } ;
struct pxd_lock {TYPE_1__ pxd; } ;
struct maplock {int flag; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  scalar_t__ s64 ;
typedef  TYPE_1__ pxd_t ;
struct TYPE_9__ {struct inode* ipbmap; } ;

/* Variables and functions */
 TYPE_7__* FUNC0 (int /*<<< orphan*/ ) ; 
 int XAD_EXTENDED ; 
 int XAD_NEW ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int,scalar_t__,scalar_t__,struct tblock*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int mlckALLOCPXD ; 
 int mlckALLOCXADLIST ; 

__attribute__((used)) static void FUNC7(struct inode *ip, struct maplock * maplock,
			struct tblock * tblk)
{
	struct inode *ipbmap = FUNC0(ip->i_sb)->ipbmap;
	struct xdlistlock *xadlistlock;
	xad_t *xad;
	s64 xaddr;
	int xlen;
	struct pxd_lock *pxdlock;
	struct xdlistlock *pxdlistlock;
	pxd_t *pxd;
	int n;

	/*
	 * allocate from persistent map;
	 */
	if (maplock->flag & mlckALLOCXADLIST) {
		xadlistlock = (struct xdlistlock *) maplock;
		xad = xadlistlock->xdlist;
		for (n = 0; n < xadlistlock->count; n++, xad++) {
			if (xad->flag & (XAD_NEW | XAD_EXTENDED)) {
				xaddr = FUNC2(xad);
				xlen = FUNC6(xad);
				FUNC3(ipbmap, false, xaddr,
					     (s64) xlen, tblk);
				xad->flag &= ~(XAD_NEW | XAD_EXTENDED);
				FUNC4("allocPMap: xaddr:0x%lx xlen:%d",
					 (ulong) xaddr, xlen);
			}
		}
	} else if (maplock->flag & mlckALLOCPXD) {
		pxdlock = (struct pxd_lock *) maplock;
		xaddr = FUNC1(&pxdlock->pxd);
		xlen = FUNC5(&pxdlock->pxd);
		FUNC3(ipbmap, false, xaddr, (s64) xlen, tblk);
		FUNC4("allocPMap: xaddr:0x%lx xlen:%d", (ulong) xaddr, xlen);
	} else {		/* (maplock->flag & mlckALLOCPXDLIST) */

		pxdlistlock = (struct xdlistlock *) maplock;
		pxd = pxdlistlock->xdlist;
		for (n = 0; n < pxdlistlock->count; n++, pxd++) {
			xaddr = FUNC1(pxd);
			xlen = FUNC5(pxd);
			FUNC3(ipbmap, false, xaddr, (s64) xlen,
				     tblk);
			FUNC4("allocPMap: xaddr:0x%lx xlen:%d",
				 (ulong) xaddr, xlen);
		}
	}
}