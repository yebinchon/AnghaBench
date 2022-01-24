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
struct user_datum {size_t value; size_t bounds; int /*<<< orphan*/  dfltlevel; int /*<<< orphan*/  range; int /*<<< orphan*/  roles; } ;
struct policydb {scalar_t__ policyvers; } ;
struct policy_data {void* fp; struct policydb* p; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  char __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ POLICYDB_VERSION_BOUNDARY ; 
 char FUNC1 (size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int FUNC3 (int /*<<< orphan*/ *,void*) ; 
 int FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int FUNC5 (char*,int,size_t,void*) ; 
 size_t FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(void *vkey, void *datum, void *ptr)
{
	char *key = vkey;
	struct user_datum *usrdatum = datum;
	struct policy_data *pd = ptr;
	struct policydb *p = pd->p;
	void *fp = pd->fp;
	__le32 buf[3];
	size_t items, len;
	int rc;

	len = FUNC6(key);
	items = 0;
	buf[items++] = FUNC1(len);
	buf[items++] = FUNC1(usrdatum->value);
	if (p->policyvers >= POLICYDB_VERSION_BOUNDARY)
		buf[items++] = FUNC1(usrdatum->bounds);
	FUNC0(items > (sizeof(buf) / sizeof(buf[0])));
	rc = FUNC5(buf, sizeof(u32), items, fp);
	if (rc)
		return rc;

	rc = FUNC5(key, 1, len, fp);
	if (rc)
		return rc;

	rc = FUNC2(&usrdatum->roles, fp);
	if (rc)
		return rc;

	rc = FUNC4(&usrdatum->range, fp);
	if (rc)
		return rc;

	rc = FUNC3(&usrdatum->dfltlevel, fp);
	if (rc)
		return rc;

	return 0;
}