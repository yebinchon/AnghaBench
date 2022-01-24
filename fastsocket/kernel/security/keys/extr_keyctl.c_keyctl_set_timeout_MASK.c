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
typedef  unsigned int time_t ;
struct timespec {unsigned int tv_sec; } ;
struct key {unsigned int expiry; int /*<<< orphan*/  sem; } ;
typedef  int /*<<< orphan*/  key_serial_t ;
typedef  struct key* key_ref_t ;

/* Variables and functions */
 long EACCES ; 
 scalar_t__ FUNC0 (struct key*) ; 
 int KEY_LOOKUP_CREATE ; 
 int KEY_LOOKUP_PARTIAL ; 
 int /*<<< orphan*/  KEY_SETATTR ; 
 long FUNC1 (struct key*) ; 
 struct timespec FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int key_gc_delay ; 
 struct key* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct key*) ; 
 struct key* FUNC6 (struct key*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 struct key* FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

long FUNC10(key_serial_t id, unsigned timeout)
{
	struct timespec now;
	struct key *key, *instkey;
	key_ref_t key_ref;
	time_t expiry;
	long ret;

	key_ref = FUNC8(id, KEY_LOOKUP_CREATE | KEY_LOOKUP_PARTIAL,
				  KEY_SETATTR);
	if (FUNC0(key_ref)) {
		/* setting the timeout on a key under construction is permitted
		 * if we have the authorisation token handy */
		if (FUNC1(key_ref) == -EACCES) {
			instkey = FUNC4(id);
			if (!FUNC0(instkey)) {
				FUNC5(instkey);
				key_ref = FUNC8(id,
							  KEY_LOOKUP_PARTIAL,
							  0);
				if (!FUNC0(key_ref))
					goto okay;
			}
		}

		ret = FUNC1(key_ref);
		goto error;
	}

okay:
	key = FUNC6(key_ref);

	/* make the changes with the locks held to prevent races */
	FUNC3(&key->sem);

	expiry = 0;
	if (timeout > 0) {
		now = FUNC2();
		expiry = now.tv_sec + timeout;
	}

	key->expiry = expiry;
	FUNC7(key->expiry + key_gc_delay);

	FUNC9(&key->sem);
	FUNC5(key);

	ret = 0;
error:
	return ret;
}