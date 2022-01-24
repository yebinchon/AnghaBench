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
struct slow_work_ops {int dummy; } ;
struct page {int dummy; } ;
struct cifs_readdata {int /*<<< orphan*/  work; int /*<<< orphan*/  done; int /*<<< orphan*/  list; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct cifs_readdata* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct slow_work_ops const*) ; 

__attribute__((used)) static struct cifs_readdata *
FUNC5(unsigned int nr_pages, const struct slow_work_ops *ops)
{
	struct cifs_readdata *rdata;

	rdata = FUNC3(sizeof(*rdata) + (sizeof(struct page *) * nr_pages),
			GFP_KERNEL);
	if (rdata != NULL) {
		FUNC2(&rdata->refcount);
		FUNC0(&rdata->list);
		FUNC1(&rdata->done);
		FUNC4(&rdata->work, ops);
	}

	return rdata;
}