
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t umode_t ;
struct super_block {int dummy; } ;
struct ext4_dir_entry_2 {int file_type; } ;


 int EXT4_FEATURE_INCOMPAT_FILETYPE ;
 scalar_t__ EXT4_HAS_INCOMPAT_FEATURE (struct super_block*,int ) ;
 size_t S_IFMT ;
 size_t S_SHIFT ;
 int * ext4_type_by_mode ;

__attribute__((used)) static inline void ext4_set_de_type(struct super_block *sb,
    struct ext4_dir_entry_2 *de,
    umode_t mode) {
 if (EXT4_HAS_INCOMPAT_FEATURE(sb, EXT4_FEATURE_INCOMPAT_FILETYPE))
  de->file_type = ext4_type_by_mode[(mode & S_IFMT)>>S_SHIFT];
}
