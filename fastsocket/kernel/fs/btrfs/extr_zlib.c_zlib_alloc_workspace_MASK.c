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
struct list_head {int dummy; } ;
struct TYPE_4__ {void* workspace; } ;
struct TYPE_3__ {void* workspace; } ;
struct workspace {struct list_head list; int /*<<< orphan*/  buf; TYPE_2__ inf_strm; TYPE_1__ def_strm; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct list_head* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct workspace* FUNC3 (int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static struct list_head *FUNC8(void)
{
	struct workspace *workspace;

	workspace = FUNC3(sizeof(*workspace), GFP_NOFS);
	if (!workspace)
		return FUNC0(-ENOMEM);

	workspace->def_strm.workspace = FUNC4(FUNC5());
	workspace->inf_strm.workspace = FUNC4(FUNC7());
	workspace->buf = FUNC2(PAGE_CACHE_SIZE, GFP_NOFS);
	if (!workspace->def_strm.workspace ||
	    !workspace->inf_strm.workspace || !workspace->buf)
		goto fail;

	FUNC1(&workspace->list);

	return &workspace->list;
fail:
	FUNC6(&workspace->list);
	return FUNC0(-ENOMEM);
}