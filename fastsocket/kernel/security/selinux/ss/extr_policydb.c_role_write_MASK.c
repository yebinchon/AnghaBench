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
struct role_datum {size_t value; size_t bounds; int /*<<< orphan*/  types; int /*<<< orphan*/  dominates; } ;
struct policydb {scalar_t__ policyvers; } ;
struct policy_data {struct policydb* p; void* fp; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  char __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ POLICYDB_VERSION_BOUNDARY ; 
 char FUNC1 (size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int FUNC3 (char*,int,size_t,void*) ; 
 size_t FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(void *vkey, void *datum, void *ptr)
{
	char *key = vkey;
	struct role_datum *role = datum;
	struct policy_data *pd = ptr;
	void *fp = pd->fp;
	struct policydb *p = pd->p;
	__le32 buf[3];
	size_t items, len;
	int rc;

	len = FUNC4(key);
	items = 0;
	buf[items++] = FUNC1(len);
	buf[items++] = FUNC1(role->value);
	if (p->policyvers >= POLICYDB_VERSION_BOUNDARY)
		buf[items++] = FUNC1(role->bounds);

	FUNC0(items > (sizeof(buf)/sizeof(buf[0])));

	rc = FUNC3(buf, sizeof(u32), items, fp);
	if (rc)
		return rc;

	rc = FUNC3(key, 1, len, fp);
	if (rc)
		return rc;

	rc = FUNC2(&role->dominates, fp);
	if (rc)
		return rc;

	rc = FUNC2(&role->types, fp);
	if (rc)
		return rc;

	return 0;
}