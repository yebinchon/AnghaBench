
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ubifs_key {int * j32; } ;
typedef int uint32_t ;
struct ubifs_info {int dummy; } ;


 int UBIFS_S_KEY_HASH_MASK ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline uint32_t key_hash_flash(const struct ubifs_info *c, const void *k)
{
 const union ubifs_key *key = k;

 return le32_to_cpu(key->j32[1]) & UBIFS_S_KEY_HASH_MASK;
}
