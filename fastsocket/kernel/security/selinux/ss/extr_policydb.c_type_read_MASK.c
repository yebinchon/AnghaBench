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
struct type_datum {int primary; int attribute; void* bounds; void* value; } ;
struct policydb {scalar_t__ policyvers; } ;
struct hashtab {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  char __le32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ POLICYDB_VERSION_BOUNDARY ; 
 int TYPEDATUM_PROPERTY_ATTRIBUTE ; 
 int TYPEDATUM_PROPERTY_PRIMARY ; 
 int FUNC0 (struct hashtab*,char*,struct type_datum*) ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct type_datum* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (char) ; 
 int FUNC4 (char*,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct type_datum*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct policydb *p, struct hashtab *h, void *fp)
{
	char *key = NULL;
	struct type_datum *typdatum;
	int rc, to_read = 3;
	__le32 buf[4];
	u32 len;

	typdatum = FUNC2(sizeof(*typdatum), GFP_KERNEL);
	if (!typdatum) {
		rc = -ENOMEM;
		return rc;
	}

	if (p->policyvers >= POLICYDB_VERSION_BOUNDARY)
		to_read = 4;

	rc = FUNC4(buf, fp, sizeof(buf[0]) * to_read);
	if (rc < 0)
		goto bad;

	len = FUNC3(buf[0]);
	typdatum->value = FUNC3(buf[1]);
	if (p->policyvers >= POLICYDB_VERSION_BOUNDARY) {
		u32 prop = FUNC3(buf[2]);

		if (prop & TYPEDATUM_PROPERTY_PRIMARY)
			typdatum->primary = 1;
		if (prop & TYPEDATUM_PROPERTY_ATTRIBUTE)
			typdatum->attribute = 1;

		typdatum->bounds = FUNC3(buf[3]);
	} else {
		typdatum->primary = FUNC3(buf[2]);
	}

	key = FUNC1(len + 1, GFP_KERNEL);
	if (!key) {
		rc = -ENOMEM;
		goto bad;
	}
	rc = FUNC4(key, fp, len);
	if (rc < 0)
		goto bad;
	key[len] = '\0';

	rc = FUNC0(h, key, typdatum);
	if (rc)
		goto bad;
out:
	return rc;
bad:
	FUNC5(key, typdatum, NULL);
	goto out;
}