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
struct writeback_control {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct nfs_pageio_descriptor {scalar_t__ pg_error; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* write_pageio_init ) (struct nfs_pageio_descriptor*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_async_write_completion_ops ; 
 int FUNC1 (struct page*,struct writeback_control*,struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_pageio_descriptor*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct writeback_control*) ; 

__attribute__((used)) static int FUNC5(struct page *page, struct writeback_control *wbc)
{
	struct nfs_pageio_descriptor pgio;
	int err;

	FUNC0(page->mapping->host)->write_pageio_init(&pgio,
							  page->mapping->host,
							  FUNC4(wbc),
							  &nfs_async_write_completion_ops);
	err = FUNC1(page, wbc, &pgio);
	FUNC2(&pgio);
	if (err < 0)
		return err;
	if (pgio.pg_error < 0)
		return pgio.pg_error;
	return 0;
}