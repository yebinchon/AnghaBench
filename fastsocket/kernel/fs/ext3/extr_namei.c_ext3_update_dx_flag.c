
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct TYPE_2__ {int i_flags; } ;


 int EXT3_FEATURE_COMPAT_DIR_INDEX ;
 int EXT3_HAS_COMPAT_FEATURE (int ,int ) ;
 TYPE_1__* EXT3_I (struct inode*) ;
 int EXT3_INDEX_FL ;

__attribute__((used)) static void ext3_update_dx_flag(struct inode *inode)
{
 if (!EXT3_HAS_COMPAT_FEATURE(inode->i_sb,
         EXT3_FEATURE_COMPAT_DIR_INDEX))
  EXT3_I(inode)->i_flags &= ~EXT3_INDEX_FL;
}
