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
struct policydb {int dummy; } ;
struct context {int /*<<< orphan*/  range; int /*<<< orphan*/  type; int /*<<< orphan*/  role; int /*<<< orphan*/  user; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,void*) ; 

__attribute__((used)) static int FUNC3(struct policydb *p, struct context *c,
			 void *fp)
{
	int rc;
	__le32 buf[3];

	buf[0] = FUNC0(c->user);
	buf[1] = FUNC0(c->role);
	buf[2] = FUNC0(c->type);

	rc = FUNC2(buf, sizeof(u32), 3, fp);
	if (rc)
		return rc;

	rc = FUNC1(&c->range, fp);
	if (rc)
		return rc;

	return 0;
}