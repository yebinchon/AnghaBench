
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct btrfs_key {int type; } ;



__attribute__((used)) static inline u8 btrfs_key_type(struct btrfs_key *key)
{
 return key->type;
}
