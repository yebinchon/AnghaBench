
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ubifs_key {int* u32; } ;
typedef int uint32_t ;
struct ubifs_info {int dummy; } ;
typedef int ino_t ;


 int UBIFS_DENT_KEY ;
 int UBIFS_S_KEY_HASH_BITS ;
 int UBIFS_S_KEY_HASH_MASK ;
 int ubifs_assert (int) ;

__attribute__((used)) static inline void dent_key_init_hash(const struct ubifs_info *c,
          union ubifs_key *key, ino_t inum,
          uint32_t hash)
{
 ubifs_assert(!(hash & ~UBIFS_S_KEY_HASH_MASK));
 key->u32[0] = inum;
 key->u32[1] = hash | (UBIFS_DENT_KEY << UBIFS_S_KEY_HASH_BITS);
}
