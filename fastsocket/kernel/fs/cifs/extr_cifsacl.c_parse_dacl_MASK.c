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
typedef  int umode_t ;
struct cifs_sid {int dummy; } ;
struct cifs_fattr {int /*<<< orphan*/  cf_mode; } ;
struct cifs_acl {int /*<<< orphan*/  num_aces; int /*<<< orphan*/  size; int /*<<< orphan*/  revision; } ;
struct cifs_ace {int /*<<< orphan*/  size; int /*<<< orphan*/  type; int /*<<< orphan*/  access_req; int /*<<< orphan*/  sid; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG2 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int S_IRWXG ; 
 int S_IRWXO ; 
 int S_IRWXU ; 
 int /*<<< orphan*/  S_IRWXUGO ; 
 int ULONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct cifs_sid*) ; 
 int /*<<< orphan*/  FUNC4 (struct cifs_ace*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct cifs_ace**) ; 
 struct cifs_ace** FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 struct cifs_sid sid_authusers ; 
 struct cifs_sid sid_everyone ; 

__attribute__((used)) static void FUNC9(struct cifs_acl *pdacl, char *end_of_acl,
		       struct cifs_sid *pownersid, struct cifs_sid *pgrpsid,
		       struct cifs_fattr *fattr)
{
	int i;
	int num_aces = 0;
	int acl_size;
	char *acl_base;
	struct cifs_ace **ppace;

	/* BB need to add parm so we can store the SID BB */

	if (!pdacl) {
		/* no DACL in the security descriptor, set
		   all the permissions for user/group/other */
		fattr->cf_mode |= S_IRWXUGO;
		return;
	}

	/* validate that we do not go past end of acl */
	if (end_of_acl < (char *)pdacl + FUNC7(pdacl->size)) {
		FUNC1(1, "ACL too small to parse DACL");
		return;
	}

	FUNC2(DBG2, "DACL revision %d size %d num aces %d",
		FUNC7(pdacl->revision), FUNC7(pdacl->size),
		FUNC8(pdacl->num_aces));

	/* reset rwx permissions for user/group/other.
	   Also, if num_aces is 0 i.e. DACL has no ACEs,
	   user/group/other have no permissions */
	fattr->cf_mode &= ~(S_IRWXUGO);

	acl_base = (char *)pdacl;
	acl_size = sizeof(struct cifs_acl);

	num_aces = FUNC8(pdacl->num_aces);
	if (num_aces > 0) {
		umode_t user_mask = S_IRWXU;
		umode_t group_mask = S_IRWXG;
		umode_t other_mask = S_IRWXU | S_IRWXG | S_IRWXO;

		if (num_aces > ULONG_MAX / sizeof(struct cifs_ace *))
			return;
		ppace = FUNC6(num_aces * sizeof(struct cifs_ace *),
				GFP_KERNEL);
		if (!ppace) {
			FUNC1(1, "DACL memory allocation error");
			return;
		}

		for (i = 0; i < num_aces; ++i) {
			ppace[i] = (struct cifs_ace *) (acl_base + acl_size);
#ifdef CONFIG_CIFS_DEBUG2
			dump_ace(ppace[i], end_of_acl);
#endif
			if (FUNC3(&(ppace[i]->sid), pownersid) == 0)
				FUNC0(ppace[i]->access_req,
						     ppace[i]->type,
						     &fattr->cf_mode,
						     &user_mask);
			if (FUNC3(&(ppace[i]->sid), pgrpsid) == 0)
				FUNC0(ppace[i]->access_req,
						     ppace[i]->type,
						     &fattr->cf_mode,
						     &group_mask);
			if (FUNC3(&(ppace[i]->sid), &sid_everyone) == 0)
				FUNC0(ppace[i]->access_req,
						     ppace[i]->type,
						     &fattr->cf_mode,
						     &other_mask);
			if (FUNC3(&(ppace[i]->sid), &sid_authusers) == 0)
				FUNC0(ppace[i]->access_req,
						     ppace[i]->type,
						     &fattr->cf_mode,
						     &other_mask);


/*			memcpy((void *)(&(cifscred->aces[i])),
				(void *)ppace[i],
				sizeof(struct cifs_ace)); */

			acl_base = (char *)ppace[i];
			acl_size = FUNC7(ppace[i]->size);
		}

		FUNC5(ppace);
	}

	return;
}