
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
typedef int handle_t ;
struct TYPE_2__ {int s_sbh; } ;


 int EXT3_FEATURE_COMPAT_EXT_ATTR ;
 scalar_t__ EXT3_HAS_COMPAT_FEATURE (struct super_block*,int ) ;
 TYPE_1__* EXT3_SB (struct super_block*) ;
 int EXT3_SET_COMPAT_FEATURE (struct super_block*,int ) ;
 int ext3_journal_dirty_metadata (int *,int ) ;
 scalar_t__ ext3_journal_get_write_access (int *,int ) ;

__attribute__((used)) static void ext3_xattr_update_super_block(handle_t *handle,
       struct super_block *sb)
{
 if (EXT3_HAS_COMPAT_FEATURE(sb, EXT3_FEATURE_COMPAT_EXT_ATTR))
  return;

 if (ext3_journal_get_write_access(handle, EXT3_SB(sb)->s_sbh) == 0) {
  EXT3_SET_COMPAT_FEATURE(sb, EXT3_FEATURE_COMPAT_EXT_ATTR);
  ext3_journal_dirty_metadata(handle, EXT3_SB(sb)->s_sbh);
 }
}
