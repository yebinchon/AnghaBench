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
struct pohmelfs_sb {int trans_max_pages; } ;
struct pohmelfs_crypto_engine {unsigned int page_num; int /*<<< orphan*/ * pages; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pohmelfs_crypto_engine *e, struct pohmelfs_sb *psb)
{
	unsigned int i;

	e->pages = FUNC2(psb->trans_max_pages * sizeof(struct page *), GFP_KERNEL);
	if (!e->pages)
		return -ENOMEM;

	for (i=0; i<psb->trans_max_pages; ++i) {
		e->pages[i] = FUNC0(GFP_KERNEL);
		if (!e->pages[i])
			break;
	}

	e->page_num = i;
	if (!e->page_num)
		goto err_out_free;

	return 0;

err_out_free:
	FUNC1(e->pages);
	return -ENOMEM;
}