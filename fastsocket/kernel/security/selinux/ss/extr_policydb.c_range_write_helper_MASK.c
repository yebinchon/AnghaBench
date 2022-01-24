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
struct range_trans {int /*<<< orphan*/  target_class; int /*<<< orphan*/  target_type; int /*<<< orphan*/  source_type; } ;
struct policydb {scalar_t__ policyvers; } ;
struct policy_data {struct policydb* p; void* fp; } ;
struct mls_range {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 scalar_t__ POLICYDB_VERSION_RANGETRANS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mls_range*,void*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,void*) ; 

__attribute__((used)) static int FUNC3(void *key, void *data, void *ptr)
{
	__le32 buf[2];
	struct range_trans *rt = key;
	struct mls_range *r = data;
	struct policy_data *pd = ptr;
	void *fp = pd->fp;
	struct policydb *p = pd->p;
	int rc;

	buf[0] = FUNC0(rt->source_type);
	buf[1] = FUNC0(rt->target_type);
	rc = FUNC2(buf, sizeof(u32), 2, fp);
	if (rc)
		return rc;
	if (p->policyvers >= POLICYDB_VERSION_RANGETRANS) {
		buf[0] = FUNC0(rt->target_class);
		rc = FUNC2(buf, sizeof(u32), 1, fp);
		if (rc)
			return rc;
	}
	rc = FUNC1(r, fp);
	if (rc)
		return rc;

	return 0;
}