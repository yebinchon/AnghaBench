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
typedef  int u_int64_t ;
struct TYPE_4__ {int vi_immed; } ;
struct vxfs_inode_info {TYPE_2__ vii_immed; } ;
struct page {scalar_t__ index; TYPE_1__* mapping; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_3__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct vxfs_inode_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

__attribute__((used)) static int
FUNC7(struct file *fp, struct page *pp)
{
	struct vxfs_inode_info	*vip = FUNC1(pp->mapping->host);
	u_int64_t	offset = (u_int64_t)pp->index << PAGE_CACHE_SHIFT;
	caddr_t		kaddr;

	kaddr = FUNC3(pp);
	FUNC5(kaddr, vip->vii_immed.vi_immed + offset, PAGE_CACHE_SIZE);
	FUNC4(pp);
	
	FUNC2(pp);
	FUNC0(pp);
        FUNC6(pp);

	return 0;
}