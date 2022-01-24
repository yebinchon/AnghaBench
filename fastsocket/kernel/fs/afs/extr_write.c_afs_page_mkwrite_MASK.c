#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {TYPE_2__* vm_file; } ;
struct page {int /*<<< orphan*/  index; } ;
struct TYPE_6__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {int /*<<< orphan*/  cache; TYPE_3__ fid; } ;
struct TYPE_5__ {TYPE_1__* f_mapping; } ;
struct TYPE_4__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 struct afs_vnode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct page*) ; 

int FUNC4(struct vm_area_struct *vma, struct page *page)
{
	struct afs_vnode *vnode = FUNC0(vma->vm_file->f_mapping->host);

	FUNC1("{{%x:%u}},{%lx}",
	       vnode->fid.vid, vnode->fid.vnode, page->index);

	/* wait for the page to be written to the cache before we allow it to
	 * be modified */
#ifdef CONFIG_AFS_FSCACHE
	fscache_wait_on_page_write(vnode->cache, page);
#endif

	FUNC2(" = 0");
	return 0;
}