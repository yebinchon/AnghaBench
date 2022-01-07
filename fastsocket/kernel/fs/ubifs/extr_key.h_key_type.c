
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ubifs_key {int* u32; } ;
struct ubifs_info {int dummy; } ;


 int UBIFS_S_KEY_BLOCK_BITS ;

__attribute__((used)) static inline int key_type(const struct ubifs_info *c,
      const union ubifs_key *key)
{
 return key->u32[1] >> UBIFS_S_KEY_BLOCK_BITS;
}
