
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ubifs_key {int* u32; } ;
typedef int uint32_t ;
struct ubifs_info {int (* key_hash ) (int ,int ) ;} ;
struct qstr {int len; int name; } ;
typedef int ino_t ;


 int UBIFS_DENT_KEY ;
 int UBIFS_S_KEY_HASH_BITS ;
 int UBIFS_S_KEY_HASH_MASK ;
 int stub1 (int ,int ) ;
 int ubifs_assert (int) ;

__attribute__((used)) static inline void dent_key_init(const struct ubifs_info *c,
     union ubifs_key *key, ino_t inum,
     const struct qstr *nm)
{
 uint32_t hash = c->key_hash(nm->name, nm->len);

 ubifs_assert(!(hash & ~UBIFS_S_KEY_HASH_MASK));
 key->u32[0] = inum;
 key->u32[1] = hash | (UBIFS_DENT_KEY << UBIFS_S_KEY_HASH_BITS);
}
