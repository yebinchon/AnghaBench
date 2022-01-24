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
struct perm_datum {void* value; } ;
struct hashtab {int dummy; } ;
typedef  char __le32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct hashtab*,char*,struct perm_datum*) ; 
 char* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 struct perm_datum* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (char) ; 
 int FUNC4 (char*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct perm_datum*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct policydb *p, struct hashtab *h, void *fp)
{
	char *key = NULL;
	struct perm_datum *perdatum;
	int rc;
	__le32 buf[2];
	u32 len;

	perdatum = FUNC2(sizeof(*perdatum), GFP_KERNEL);
	if (!perdatum) {
		rc = -ENOMEM;
		goto out;
	}

	rc = FUNC4(buf, fp, sizeof buf);
	if (rc < 0)
		goto bad;

	len = FUNC3(buf[0]);
	perdatum->value = FUNC3(buf[1]);

	key = FUNC1(len + 1, GFP_KERNEL);
	if (!key) {
		rc = -ENOMEM;
		goto bad;
	}
	rc = FUNC4(key, fp, len);
	if (rc < 0)
		goto bad;
	key[len] = '\0';

	rc = FUNC0(h, key, perdatum);
	if (rc)
		goto bad;
out:
	return rc;
bad:
	FUNC5(key, perdatum, NULL);
	goto out;
}