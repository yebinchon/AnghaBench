
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct btrfs_key {int type; } ;



__attribute__((used)) static inline void btrfs_set_key_type(struct btrfs_key *key, u8 val)
{
 key->type = val;
}
