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
union ubifs_key {void** j32; } ;
typedef  int uint32_t ;
struct ubifs_info {int (* key_hash ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct qstr {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
typedef  int ino_t ;

/* Variables and functions */
 scalar_t__ UBIFS_MAX_KEY_LEN ; 
 int UBIFS_S_KEY_HASH_BITS ; 
 int UBIFS_S_KEY_HASH_MASK ; 
 int UBIFS_XENT_KEY ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static inline void FUNC4(const struct ubifs_info *c, void *k,
				       ino_t inum, const struct qstr *nm)
{
	union ubifs_key *key = k;
	uint32_t hash = c->key_hash(nm->name, nm->len);

	FUNC3(!(hash & ~UBIFS_S_KEY_HASH_MASK));
	key->j32[0] = FUNC0(inum);
	key->j32[1] = FUNC0(hash |
				  (UBIFS_XENT_KEY << UBIFS_S_KEY_HASH_BITS));
	FUNC1(k + 8, 0, UBIFS_MAX_KEY_LEN - 8);
}