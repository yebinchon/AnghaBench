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
struct mls_level {int dummy; } ;
struct level_datum {void* level; void* isalias; } ;
struct hashtab {int dummy; } ;
typedef  char __le32 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (struct hashtab*,char*,struct level_datum*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct level_datum* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (char) ; 
 scalar_t__ FUNC4 (void*,void*) ; 
 int FUNC5 (char*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct level_datum*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct policydb *p, struct hashtab *h, void *fp)
{
	char *key = NULL;
	struct level_datum *levdatum;
	int rc;
	__le32 buf[2];
	u32 len;

	levdatum = FUNC2(sizeof(*levdatum), GFP_ATOMIC);
	if (!levdatum) {
		rc = -ENOMEM;
		goto out;
	}

	rc = FUNC5(buf, fp, sizeof buf);
	if (rc < 0)
		goto bad;

	len = FUNC3(buf[0]);
	levdatum->isalias = FUNC3(buf[1]);

	key = FUNC1(len + 1, GFP_ATOMIC);
	if (!key) {
		rc = -ENOMEM;
		goto bad;
	}
	rc = FUNC5(key, fp, len);
	if (rc < 0)
		goto bad;
	key[len] = '\0';

	levdatum->level = FUNC1(sizeof(struct mls_level), GFP_ATOMIC);
	if (!levdatum->level) {
		rc = -ENOMEM;
		goto bad;
	}
	if (FUNC4(levdatum->level, fp)) {
		rc = -EINVAL;
		goto bad;
	}

	rc = FUNC0(h, key, levdatum);
	if (rc)
		goto bad;
out:
	return rc;
bad:
	FUNC6(key, levdatum, NULL);
	goto out;
}