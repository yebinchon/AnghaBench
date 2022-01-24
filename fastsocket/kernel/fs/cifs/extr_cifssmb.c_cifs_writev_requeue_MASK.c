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
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct cifs_writedata {int nr_pages; int /*<<< orphan*/ * pages; TYPE_2__* cfile; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cifs_writedata*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct cifs_writedata *wdata)
{
	int i, rc;
	struct inode *inode = wdata->cfile->dentry->d_inode;

	for (i = 0; i < wdata->nr_pages; i++) {
		FUNC4(wdata->pages[i]);
		FUNC2(wdata->pages[i]);
	}

	do {
		rc = FUNC1(wdata);
	} while (rc == -EAGAIN);

	for (i = 0; i < wdata->nr_pages; i++) {
		FUNC7(wdata->pages[i]);
		if (rc != 0) {
			FUNC0(wdata->pages[i]);
			FUNC3(wdata->pages[i]);
			FUNC6(wdata->pages[i]);
		}
	}

	FUNC5(inode->i_mapping, rc);
}