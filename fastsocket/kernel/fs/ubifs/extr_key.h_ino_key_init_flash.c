
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ubifs_key {void** j32; } ;
struct ubifs_info {int dummy; } ;
typedef int ino_t ;


 int UBIFS_INO_KEY ;
 scalar_t__ UBIFS_MAX_KEY_LEN ;
 int UBIFS_S_KEY_BLOCK_BITS ;
 void* cpu_to_le32 (int) ;
 int memset (void*,int ,scalar_t__) ;

__attribute__((used)) static inline void ino_key_init_flash(const struct ubifs_info *c, void *k,
          ino_t inum)
{
 union ubifs_key *key = k;

 key->j32[0] = cpu_to_le32(inum);
 key->j32[1] = cpu_to_le32(UBIFS_INO_KEY << UBIFS_S_KEY_BLOCK_BITS);
 memset(k + 8, 0, UBIFS_MAX_KEY_LEN - 8);
}
