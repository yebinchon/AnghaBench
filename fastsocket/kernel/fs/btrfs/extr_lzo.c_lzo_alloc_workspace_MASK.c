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
struct list_head {int dummy; } ;
struct workspace {struct list_head list; void* cbuf; void* buf; void* mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct list_head* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  LZO1X_MEM_COMPRESS ; 
 int /*<<< orphan*/  PAGE_CACHE_SIZE ; 
 struct workspace* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct list_head*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct list_head *FUNC6(void)
{
	struct workspace *workspace;

	workspace = FUNC2(sizeof(*workspace), GFP_NOFS);
	if (!workspace)
		return FUNC0(-ENOMEM);

	workspace->mem = FUNC5(LZO1X_MEM_COMPRESS);
	workspace->buf = FUNC5(FUNC3(PAGE_CACHE_SIZE));
	workspace->cbuf = FUNC5(FUNC3(PAGE_CACHE_SIZE));
	if (!workspace->mem || !workspace->buf || !workspace->cbuf)
		goto fail;

	FUNC1(&workspace->list);

	return &workspace->list;
fail:
	FUNC4(&workspace->list);
	return FUNC0(-ENOMEM);
}