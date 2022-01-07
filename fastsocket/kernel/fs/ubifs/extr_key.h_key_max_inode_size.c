
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int key_fmt; } ;


 unsigned long long UBIFS_BLOCK_SIZE ;

 unsigned long long UBIFS_S_KEY_BLOCK_BITS ;

__attribute__((used)) static inline unsigned long long key_max_inode_size(const struct ubifs_info *c)
{
 switch (c->key_fmt) {
 case 128:
  return (1ULL << UBIFS_S_KEY_BLOCK_BITS) * UBIFS_BLOCK_SIZE;
 default:
  return 0;
 }
}
