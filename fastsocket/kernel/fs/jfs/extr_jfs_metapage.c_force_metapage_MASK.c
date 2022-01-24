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
struct page {int dummy; } ;
struct metapage {int /*<<< orphan*/  flag; struct page* page; } ;

/* Variables and functions */
 int /*<<< orphan*/  META_forcewrite ; 
 int /*<<< orphan*/  META_sync ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct metapage*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,int) ; 

void FUNC8(struct metapage *mp)
{
	struct page *page = mp->page;
	FUNC1("force_metapage: mp = 0x%p", mp);
	FUNC5(META_forcewrite, &mp->flag);
	FUNC0(META_sync, &mp->flag);
	FUNC3(page);
	FUNC2(page);
	FUNC6(page);
	FUNC7(page, 1);
	FUNC0(META_forcewrite, &mp->flag);
	FUNC4(page);
}