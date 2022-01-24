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
struct key_type {int /*<<< orphan*/  match; int /*<<< orphan*/  name; } ;
struct key {int dummy; } ;
struct cred {int dummy; } ;
typedef  int /*<<< orphan*/  key_ref_t ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ENOKEY ; 
 struct key* FUNC0 (int /*<<< orphan*/ ) ; 
 struct key* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct key**) ; 
 struct key* FUNC5 (struct key_type*,char const*,void const*,size_t,void*,struct key*,unsigned long) ; 
 struct cred* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char const*,void const*,size_t,void*,struct key*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct key*,struct key*) ; 
 int /*<<< orphan*/  FUNC9 (struct key*) ; 
 struct key* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,struct key*) ; 
 int /*<<< orphan*/  FUNC12 (struct key_type*,char const*,int /*<<< orphan*/ ,struct cred const*) ; 

struct key *FUNC13(struct key_type *type,
				 const char *description,
				 const void *callout_info,
				 size_t callout_len,
				 void *aux,
				 struct key *dest_keyring,
				 unsigned long flags)
{
	const struct cred *cred = FUNC6();
	struct key *key;
	key_ref_t key_ref;

	FUNC7("%s,%s,%p,%zu,%p,%p,%lx",
	       type->name, description, callout_info, callout_len, aux,
	       dest_keyring, flags);

	/* search all the process keyrings for a key */
	key_ref = FUNC12(type, description, type->match, cred);

	if (!FUNC2(key_ref)) {
		key = FUNC10(key_ref);
		if (dest_keyring) {
			FUNC4(&dest_keyring);
			FUNC8(dest_keyring, key);
			FUNC9(dest_keyring);
		}
	} else if (FUNC3(key_ref) != -EAGAIN) {
		key = FUNC0(key_ref);
	} else  {
		/* the search failed, but the keyrings were searchable, so we
		 * should consult userspace if we can */
		key = FUNC1(-ENOKEY);
		if (!callout_info)
			goto error;

		key = FUNC5(type, description, callout_info,
					     callout_len, aux, dest_keyring,
					     flags);
	}

error:
	FUNC11(" = %p", key);
	return key;
}