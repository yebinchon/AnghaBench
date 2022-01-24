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
typedef  size_t u32 ;
struct policydb {int dummy; } ;
struct hashtab {int dummy; } ;
struct cat_datum {void* isalias; void* value; } ;
typedef  char __le32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (char*,struct cat_datum*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct hashtab*,char*,struct cat_datum*) ; 
 char* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 struct cat_datum* FUNC3 (int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (char) ; 
 int FUNC5 (char*,void*,size_t) ; 

__attribute__((used)) static int FUNC6(struct policydb *p, struct hashtab *h, void *fp)
{
	char *key = NULL;
	struct cat_datum *catdatum;
	int rc;
	__le32 buf[3];
	u32 len;

	catdatum = FUNC3(sizeof(*catdatum), GFP_ATOMIC);
	if (!catdatum) {
		rc = -ENOMEM;
		goto out;
	}

	rc = FUNC5(buf, fp, sizeof buf);
	if (rc < 0)
		goto bad;

	len = FUNC4(buf[0]);
	catdatum->value = FUNC4(buf[1]);
	catdatum->isalias = FUNC4(buf[2]);

	key = FUNC2(len + 1, GFP_ATOMIC);
	if (!key) {
		rc = -ENOMEM;
		goto bad;
	}
	rc = FUNC5(key, fp, len);
	if (rc < 0)
		goto bad;
	key[len] = '\0';

	rc = FUNC1(h, key, catdatum);
	if (rc)
		goto bad;
out:
	return rc;

bad:
	FUNC0(key, catdatum, NULL);
	goto out;
}