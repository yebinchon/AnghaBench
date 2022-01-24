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
typedef  int /*<<< orphan*/  u32 ;
struct role_trans {size_t role; size_t type; size_t new_role; struct role_trans* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,void*) ; 

__attribute__((used)) static int FUNC2(struct role_trans *r, void *fp)
{
	struct role_trans *tr;
	u32 buf[3];
	size_t nel;
	int rc;

	nel = 0;
	for (tr = r; tr; tr = tr->next)
		nel++;
	buf[0] = FUNC0(nel);
	rc = FUNC1(buf, sizeof(u32), 1, fp);
	if (rc)
		return rc;
	for (tr = r; tr; tr = tr->next) {
		buf[0] = FUNC0(tr->role);
		buf[1] = FUNC0(tr->type);
		buf[2] = FUNC0(tr->new_role);
		rc = FUNC1(buf, sizeof(u32), 3, fp);
		if (rc)
			return rc;
	}

	return 0;
}