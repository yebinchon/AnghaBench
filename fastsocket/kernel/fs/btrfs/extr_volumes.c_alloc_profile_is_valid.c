
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int BTRFS_BLOCK_GROUP_PROFILE_MASK ;
 int BTRFS_BLOCK_GROUP_TYPE_MASK ;
 int BTRFS_EXTENDED_PROFILE_MASK ;

__attribute__((used)) static int alloc_profile_is_valid(u64 flags, int extended)
{
 u64 mask = (extended ? BTRFS_EXTENDED_PROFILE_MASK :
          BTRFS_BLOCK_GROUP_PROFILE_MASK);

 flags &= ~BTRFS_BLOCK_GROUP_TYPE_MASK;


 if (flags & ~mask)
  return 0;


 if (flags == 0)
  return !extended;


 return (flags & (flags - 1)) == 0;
}
