#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct mls_range {TYPE_1__* level; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_3__ {size_t sens; int /*<<< orphan*/  cat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,size_t,void*) ; 

__attribute__((used)) static int FUNC5(struct mls_range *r, void *fp)
{
	__le32 buf[3];
	size_t items;
	int rc, eq;

	eq = FUNC3(&r->level[1], &r->level[0]);

	if (eq)
		items = 2;
	else
		items = 3;
	buf[0] = FUNC1(items-1);
	buf[1] = FUNC1(r->level[0].sens);
	if (!eq)
		buf[2] = FUNC1(r->level[1].sens);

	FUNC0(items > (sizeof(buf)/sizeof(buf[0])));

	rc = FUNC4(buf, sizeof(u32), items, fp);
	if (rc)
		return rc;

	rc = FUNC2(&r->level[0].cat, fp);
	if (rc)
		return rc;
	if (!eq) {
		rc = FUNC2(&r->level[1].cat, fp);
		if (rc)
			return rc;
	}

	return 0;
}