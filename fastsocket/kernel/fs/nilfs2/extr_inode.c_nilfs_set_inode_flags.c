
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_flags; int i_mapping; } ;
struct TYPE_2__ {unsigned int i_flags; } ;


 unsigned int NILFS_APPEND_FL ;
 unsigned int NILFS_DIRSYNC_FL ;
 TYPE_1__* NILFS_I (struct inode*) ;
 unsigned int NILFS_IMMUTABLE_FL ;
 unsigned int NILFS_NOATIME_FL ;
 unsigned int NILFS_SYNC_FL ;
 int S_APPEND ;
 int S_DIRSYNC ;
 int S_IMMUTABLE ;
 int S_NOATIME ;
 int S_SYNC ;
 int __GFP_FS ;
 int mapping_gfp_mask (int ) ;
 int mapping_set_gfp_mask (int ,int) ;

void nilfs_set_inode_flags(struct inode *inode)
{
 unsigned int flags = NILFS_I(inode)->i_flags;

 inode->i_flags &= ~(S_SYNC | S_APPEND | S_IMMUTABLE | S_NOATIME |
       S_DIRSYNC);
 if (flags & NILFS_SYNC_FL)
  inode->i_flags |= S_SYNC;
 if (flags & NILFS_APPEND_FL)
  inode->i_flags |= S_APPEND;
 if (flags & NILFS_IMMUTABLE_FL)
  inode->i_flags |= S_IMMUTABLE;

 if (flags & NILFS_NOATIME_FL)

  inode->i_flags |= S_NOATIME;
 if (flags & NILFS_DIRSYNC_FL)
  inode->i_flags |= S_DIRSYNC;
 mapping_set_gfp_mask(inode->i_mapping,
        mapping_gfp_mask(inode->i_mapping) & ~__GFP_FS);
}
