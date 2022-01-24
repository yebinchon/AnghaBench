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
struct key {int /*<<< orphan*/  sem; int /*<<< orphan*/  flags; TYPE_1__* type; } ;
typedef  int /*<<< orphan*/  key_ref_t ;
struct TYPE_2__ {int (* update ) (struct key*,void const*,size_t) ;} ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KEY_FLAG_NEGATIVE ; 
 int /*<<< orphan*/  KEY_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct key*) ; 
 struct key* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct key*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline key_ref_t FUNC8(key_ref_t key_ref,
				     const void *payload, size_t plen)
{
	struct key *key = FUNC5(key_ref);
	int ret;

	/* need write permission on the key to update it */
	ret = FUNC3(key_ref, KEY_WRITE);
	if (ret < 0)
		goto error;

	ret = -EEXIST;
	if (!key->type->update)
		goto error;

	FUNC2(&key->sem);

	ret = key->type->update(key, payload, plen);
	if (ret == 0)
		/* updating a negative key instantiates it */
		FUNC1(KEY_FLAG_NEGATIVE, &key->flags);

	FUNC7(&key->sem);

	if (ret < 0)
		goto error;
out:
	return key_ref;

error:
	FUNC4(key);
	key_ref = FUNC0(ret);
	goto out;
}