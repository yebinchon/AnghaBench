#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct policydb {int dummy; } ;
struct hashtab {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  table; void* nprim; } ;
struct common_datum {TYPE_1__ permissions; void* value; } ;
typedef  char __le32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PERM_SYMTAB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,struct common_datum*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct hashtab*,char*,struct common_datum*) ; 
 char* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 struct common_datum* FUNC3 (int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (char) ; 
 int FUNC5 (char*,void*,size_t) ; 
 int FUNC6 (struct policydb*,int /*<<< orphan*/ ,void*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct policydb *p, struct hashtab *h, void *fp)
{
	char *key = NULL;
	struct common_datum *comdatum;
	__le32 buf[4];
	u32 len, nel;
	int i, rc;

	comdatum = FUNC3(sizeof(*comdatum), GFP_KERNEL);
	if (!comdatum) {
		rc = -ENOMEM;
		goto out;
	}

	rc = FUNC5(buf, fp, sizeof buf);
	if (rc < 0)
		goto bad;

	len = FUNC4(buf[0]);
	comdatum->value = FUNC4(buf[1]);

	rc = FUNC7(&comdatum->permissions, PERM_SYMTAB_SIZE);
	if (rc)
		goto bad;
	comdatum->permissions.nprim = FUNC4(buf[2]);
	nel = FUNC4(buf[3]);

	key = FUNC2(len + 1, GFP_KERNEL);
	if (!key) {
		rc = -ENOMEM;
		goto bad;
	}
	rc = FUNC5(key, fp, len);
	if (rc < 0)
		goto bad;
	key[len] = '\0';

	for (i = 0; i < nel; i++) {
		rc = FUNC6(p, comdatum->permissions.table, fp);
		if (rc)
			goto bad;
	}

	rc = FUNC1(h, key, comdatum);
	if (rc)
		goto bad;
out:
	return rc;
bad:
	FUNC0(key, comdatum, NULL);
	goto out;
}