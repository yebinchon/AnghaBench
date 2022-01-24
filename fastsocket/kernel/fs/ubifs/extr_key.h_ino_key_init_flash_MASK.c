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
struct ubifs_info {int dummy; } ;
typedef  int ino_t ;

/* Variables and functions */
 int UBIFS_INO_KEY ; 
 scalar_t__ UBIFS_MAX_KEY_LEN ; 
 int UBIFS_S_KEY_BLOCK_BITS ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(const struct ubifs_info *c, void *k,
				      ino_t inum)
{
	union ubifs_key *key = k;

	key->j32[0] = FUNC0(inum);
	key->j32[1] = FUNC0(UBIFS_INO_KEY << UBIFS_S_KEY_BLOCK_BITS);
	FUNC1(k + 8, 0, UBIFS_MAX_KEY_LEN - 8);
}