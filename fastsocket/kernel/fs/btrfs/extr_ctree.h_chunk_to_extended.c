
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int BTRFS_AVAIL_ALLOC_BIT_SINGLE ;
 int BTRFS_BLOCK_GROUP_PROFILE_MASK ;

__attribute__((used)) static inline u64 chunk_to_extended(u64 flags)
{
 if ((flags & BTRFS_BLOCK_GROUP_PROFILE_MASK) == 0)
  flags |= BTRFS_AVAIL_ALLOC_BIT_SINGLE;

 return flags;
}
