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
union ubifs_key {int* u32; } ;
typedef  int uint32_t ;
struct ubifs_info {int (* key_hash ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct qstr {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
typedef  int ino_t ;

/* Variables and functions */
 int UBIFS_DENT_KEY ; 
 int UBIFS_S_KEY_HASH_BITS ; 
 int UBIFS_S_KEY_HASH_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(const struct ubifs_info *c,
				 union ubifs_key *key, ino_t inum,
				 const struct qstr *nm)
{
	uint32_t hash = c->key_hash(nm->name, nm->len);

	FUNC1(!(hash & ~UBIFS_S_KEY_HASH_MASK));
	key->u32[0] = inum;
	key->u32[1] = hash | (UBIFS_DENT_KEY << UBIFS_S_KEY_HASH_BITS);
}