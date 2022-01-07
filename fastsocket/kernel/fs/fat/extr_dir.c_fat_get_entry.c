
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msdos_dir_entry {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int loff_t ;
struct TYPE_2__ {int dir_per_block; } ;


 TYPE_1__* MSDOS_SB (int ) ;
 int fat__get_entry (struct inode*,int*,struct buffer_head**,struct msdos_dir_entry**) ;

__attribute__((used)) static inline int fat_get_entry(struct inode *dir, loff_t *pos,
    struct buffer_head **bh,
    struct msdos_dir_entry **de)
{

 if (*bh && *de &&
     (*de - (struct msdos_dir_entry *)(*bh)->b_data) < MSDOS_SB(dir->i_sb)->dir_per_block - 1) {
  *pos += sizeof(struct msdos_dir_entry);
  (*de)++;
  return 0;
 }
 return fat__get_entry(dir, pos, bh, de);
}
