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
struct pnfs_layoutdriver_type {struct pnfs_layout_hdr* (* alloc_layout_hdr ) (struct inode*,int /*<<< orphan*/ ) ;} ;
struct pnfs_layout_hdr {int dummy; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {struct pnfs_layoutdriver_type* pnfs_curr_ld; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct pnfs_layout_hdr* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct pnfs_layout_hdr* FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct pnfs_layout_hdr *
FUNC3(struct inode *ino, gfp_t gfp_flags)
{
	struct pnfs_layoutdriver_type *ld = FUNC0(ino)->pnfs_curr_ld;
	return ld->alloc_layout_hdr ? ld->alloc_layout_hdr(ino, gfp_flags) :
		FUNC1(sizeof(struct pnfs_layout_hdr), gfp_flags);
}