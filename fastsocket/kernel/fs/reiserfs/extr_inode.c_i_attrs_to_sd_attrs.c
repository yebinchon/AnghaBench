
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_flags; int i_sb; } ;
typedef int __u16 ;
struct TYPE_2__ {int i_flags; } ;


 TYPE_1__* REISERFS_I (struct inode*) ;
 int REISERFS_IMMUTABLE_FL ;
 int REISERFS_NOATIME_FL ;
 int REISERFS_NOTAIL_FL ;
 int REISERFS_SYNC_FL ;
 int S_IMMUTABLE ;
 int S_NOATIME ;
 int S_SYNC ;
 int i_nopack_mask ;
 scalar_t__ reiserfs_attrs (int ) ;

void i_attrs_to_sd_attrs(struct inode *inode, __u16 * sd_attrs)
{
 if (reiserfs_attrs(inode->i_sb)) {
  if (inode->i_flags & S_IMMUTABLE)
   *sd_attrs |= REISERFS_IMMUTABLE_FL;
  else
   *sd_attrs &= ~REISERFS_IMMUTABLE_FL;
  if (inode->i_flags & S_SYNC)
   *sd_attrs |= REISERFS_SYNC_FL;
  else
   *sd_attrs &= ~REISERFS_SYNC_FL;
  if (inode->i_flags & S_NOATIME)
   *sd_attrs |= REISERFS_NOATIME_FL;
  else
   *sd_attrs &= ~REISERFS_NOATIME_FL;
  if (REISERFS_I(inode)->i_flags & i_nopack_mask)
   *sd_attrs |= REISERFS_NOTAIL_FL;
  else
   *sd_attrs &= ~REISERFS_NOTAIL_FL;
 }
}
