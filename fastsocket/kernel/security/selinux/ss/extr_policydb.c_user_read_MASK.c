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
typedef  int u32 ;
struct user_datum {int /*<<< orphan*/  dfltlevel; int /*<<< orphan*/  range; int /*<<< orphan*/  roles; void* bounds; void* value; } ;
struct policydb {scalar_t__ policyvers; } ;
struct hashtab {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  char __le32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ POLICYDB_VERSION_BOUNDARY ; 
 scalar_t__ POLICYDB_VERSION_MLS ; 
 int FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int FUNC1 (struct hashtab*,char*,struct user_datum*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct user_datum* FUNC3 (int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (char) ; 
 int FUNC5 (int /*<<< orphan*/ *,void*) ; 
 int FUNC6 (int /*<<< orphan*/ *,void*) ; 
 int FUNC7 (char*,void*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct user_datum*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct policydb *p, struct hashtab *h, void *fp)
{
	char *key = NULL;
	struct user_datum *usrdatum;
	int rc, to_read = 2;
	__le32 buf[3];
	u32 len;

	usrdatum = FUNC3(sizeof(*usrdatum), GFP_KERNEL);
	if (!usrdatum) {
		rc = -ENOMEM;
		goto out;
	}

	if (p->policyvers >= POLICYDB_VERSION_BOUNDARY)
		to_read = 3;

	rc = FUNC7(buf, fp, sizeof(buf[0]) * to_read);
	if (rc < 0)
		goto bad;

	len = FUNC4(buf[0]);
	usrdatum->value = FUNC4(buf[1]);
	if (p->policyvers >= POLICYDB_VERSION_BOUNDARY)
		usrdatum->bounds = FUNC4(buf[2]);

	key = FUNC2(len + 1, GFP_KERNEL);
	if (!key) {
		rc = -ENOMEM;
		goto bad;
	}
	rc = FUNC7(key, fp, len);
	if (rc < 0)
		goto bad;
	key[len] = '\0';

	rc = FUNC0(&usrdatum->roles, fp);
	if (rc)
		goto bad;

	if (p->policyvers >= POLICYDB_VERSION_MLS) {
		rc = FUNC6(&usrdatum->range, fp);
		if (rc)
			goto bad;
		rc = FUNC5(&usrdatum->dfltlevel, fp);
		if (rc)
			goto bad;
	}

	rc = FUNC1(h, key, usrdatum);
	if (rc)
		goto bad;
out:
	return rc;
bad:
	FUNC8(key, usrdatum, NULL);
	goto out;
}