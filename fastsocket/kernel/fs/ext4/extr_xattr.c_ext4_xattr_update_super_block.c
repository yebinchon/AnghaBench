
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_dirt; } ;
typedef int handle_t ;
struct TYPE_2__ {int s_sbh; } ;


 int EXT4_FEATURE_COMPAT_EXT_ATTR ;
 scalar_t__ EXT4_HAS_COMPAT_FEATURE (struct super_block*,int ) ;
 TYPE_1__* EXT4_SB (struct super_block*) ;
 int EXT4_SET_COMPAT_FEATURE (struct super_block*,int ) ;
 int ext4_handle_dirty_metadata (int *,int *,int ) ;
 scalar_t__ ext4_journal_get_write_access (int *,int ) ;

__attribute__((used)) static void ext4_xattr_update_super_block(handle_t *handle,
       struct super_block *sb)
{
 if (EXT4_HAS_COMPAT_FEATURE(sb, EXT4_FEATURE_COMPAT_EXT_ATTR))
  return;

 if (ext4_journal_get_write_access(handle, EXT4_SB(sb)->s_sbh) == 0) {
  EXT4_SET_COMPAT_FEATURE(sb, EXT4_FEATURE_COMPAT_EXT_ATTR);
  sb->s_dirt = 1;
  ext4_handle_dirty_metadata(handle, ((void*)0), EXT4_SB(sb)->s_sbh);
 }
}
