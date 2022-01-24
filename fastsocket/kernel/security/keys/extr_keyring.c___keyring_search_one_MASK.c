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
struct keyring_list {int nkeys; struct key** keys; } ;
struct key_type {scalar_t__ (* match ) (struct key*,char const*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  subscriptions; } ;
struct key {int /*<<< orphan*/  usage; int /*<<< orphan*/  flags; struct key_type const* type; TYPE_1__ payload; } ;
typedef  int /*<<< orphan*/  key_ref_t ;
typedef  int /*<<< orphan*/  key_perm_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOKEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_FLAG_REVOKED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct key* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct key*,unsigned long) ; 
 struct keyring_list* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (struct key*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

key_ref_t FUNC12(key_ref_t keyring_ref,
			       const struct key_type *ktype,
			       const char *description,
			       key_perm_t perm)
{
	struct keyring_list *klist;
	unsigned long possessed;
	struct key *keyring, *key;
	int nkeys, loop;

	keyring = FUNC4(keyring_ref);
	possessed = FUNC2(keyring_ref);

	FUNC7();

	klist = FUNC6(keyring->payload.subscriptions);
	if (klist) {
		nkeys = klist->nkeys;
		FUNC9();
		for (loop = 0; loop < nkeys ; loop++) {
			key = klist->keys[loop];

			if (key->type == ktype &&
			    (!key->type->match ||
			     key->type->match(key, description)) &&
			    FUNC3(FUNC5(key, possessed),
					   perm) == 0 &&
			    !FUNC11(KEY_FLAG_REVOKED, &key->flags)
			    )
				goto found;
		}
	}

	FUNC8();
	return FUNC0(-ENOKEY);

found:
	FUNC1(&key->usage);
	FUNC8();
	return FUNC5(key, possessed);
}