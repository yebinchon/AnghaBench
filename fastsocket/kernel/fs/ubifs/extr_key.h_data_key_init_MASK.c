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
union ubifs_key {unsigned int* u32; } ;
struct ubifs_info {int dummy; } ;
typedef  unsigned int ino_t ;

/* Variables and functions */
 unsigned int UBIFS_DATA_KEY ; 
 unsigned int UBIFS_S_KEY_BLOCK_BITS ; 
 unsigned int UBIFS_S_KEY_BLOCK_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline void FUNC1(const struct ubifs_info *c,
				 union ubifs_key *key, ino_t inum,
				 unsigned int block)
{
	FUNC0(!(block & ~UBIFS_S_KEY_BLOCK_MASK));
	key->u32[0] = inum;
	key->u32[1] = block | (UBIFS_DATA_KEY << UBIFS_S_KEY_BLOCK_BITS);
}