
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {size_t i_mode; int i_sb; } ;
typedef size_t mode_t ;
struct TYPE_3__ {scalar_t__ file_type; } ;
typedef TYPE_1__ ext2_dirent ;


 int EXT2_FEATURE_INCOMPAT_FILETYPE ;
 scalar_t__ EXT2_HAS_INCOMPAT_FEATURE (int ,int ) ;
 size_t S_IFMT ;
 size_t S_SHIFT ;
 scalar_t__* ext2_type_by_mode ;

__attribute__((used)) static inline void ext2_set_de_type(ext2_dirent *de, struct inode *inode)
{
 mode_t mode = inode->i_mode;
 if (EXT2_HAS_INCOMPAT_FEATURE(inode->i_sb, EXT2_FEATURE_INCOMPAT_FILETYPE))
  de->file_type = ext2_type_by_mode[(mode & S_IFMT)>>S_SHIFT];
 else
  de->file_type = 0;
}
