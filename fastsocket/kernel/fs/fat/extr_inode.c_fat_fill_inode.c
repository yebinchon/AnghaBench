
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ isvfat; scalar_t__ sys_immutable; scalar_t__ showexec; int fs_gid; int fs_uid; } ;
struct msdos_sb_info {int fat_bits; int cluster_size; TYPE_2__ options; int * dir_ops; } ;
struct msdos_dir_entry {int attr; int adate; int ctime_cs; int cdate; int ctime; int date; int time; int size; int starthi; int start; scalar_t__ name; } ;
struct inode {int i_generation; int i_size; int i_blocks; int i_mtime; int i_atime; int i_ctime; int i_flags; TYPE_1__* i_mapping; int * i_fop; int * i_op; void* i_mode; int i_nlink; int i_version; int i_gid; int i_uid; int i_sb; } ;
typedef int loff_t ;
struct TYPE_6__ {int i_start; int i_logstart; int mmu_private; scalar_t__ i_pos; } ;
struct TYPE_4__ {int * a_ops; } ;


 int ATTR_DIR ;
 int ATTR_SYS ;
 int IS_FREE (scalar_t__) ;
 TYPE_3__* MSDOS_I (struct inode*) ;
 struct msdos_sb_info* MSDOS_SB (int ) ;
 int S_IMMUTABLE ;
 int S_IRUGO ;
 int S_IRWXUGO ;
 int S_IWUGO ;
 int fat_aops ;
 int fat_calc_dir_size (struct inode*) ;
 int fat_dir_operations ;
 int fat_file_inode_operations ;
 int fat_file_operations ;
 void* fat_make_mode (struct msdos_sb_info*,int,int) ;
 int fat_save_attrs (struct inode*,int) ;
 int fat_subdirs (struct inode*) ;
 int fat_time_fat2unix (struct msdos_sb_info*,int *,int ,int ,int ) ;
 int get_seconds () ;
 int is_exec (scalar_t__) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int fat_fill_inode(struct inode *inode, struct msdos_dir_entry *de)
{
 struct msdos_sb_info *sbi = MSDOS_SB(inode->i_sb);
 int error;

 MSDOS_I(inode)->i_pos = 0;
 inode->i_uid = sbi->options.fs_uid;
 inode->i_gid = sbi->options.fs_gid;
 inode->i_version++;
 inode->i_generation = get_seconds();

 if ((de->attr & ATTR_DIR) && !IS_FREE(de->name)) {
  inode->i_generation &= ~1;
  inode->i_mode = fat_make_mode(sbi, de->attr, S_IRWXUGO);
  inode->i_op = sbi->dir_ops;
  inode->i_fop = &fat_dir_operations;

  MSDOS_I(inode)->i_start = le16_to_cpu(de->start);
  if (sbi->fat_bits == 32)
   MSDOS_I(inode)->i_start |= (le16_to_cpu(de->starthi) << 16);

  MSDOS_I(inode)->i_logstart = MSDOS_I(inode)->i_start;
  error = fat_calc_dir_size(inode);
  if (error < 0)
   return error;
  MSDOS_I(inode)->mmu_private = inode->i_size;

  inode->i_nlink = fat_subdirs(inode);
 } else {
  inode->i_generation |= 1;
  inode->i_mode = fat_make_mode(sbi, de->attr,
   ((sbi->options.showexec && !is_exec(de->name + 8))
    ? S_IRUGO|S_IWUGO : S_IRWXUGO));
  MSDOS_I(inode)->i_start = le16_to_cpu(de->start);
  if (sbi->fat_bits == 32)
   MSDOS_I(inode)->i_start |= (le16_to_cpu(de->starthi) << 16);

  MSDOS_I(inode)->i_logstart = MSDOS_I(inode)->i_start;
  inode->i_size = le32_to_cpu(de->size);
  inode->i_op = &fat_file_inode_operations;
  inode->i_fop = &fat_file_operations;
  inode->i_mapping->a_ops = &fat_aops;
  MSDOS_I(inode)->mmu_private = inode->i_size;
 }
 if (de->attr & ATTR_SYS) {
  if (sbi->options.sys_immutable)
   inode->i_flags |= S_IMMUTABLE;
 }
 fat_save_attrs(inode, de->attr);

 inode->i_blocks = ((inode->i_size + (sbi->cluster_size - 1))
      & ~((loff_t)sbi->cluster_size - 1)) >> 9;

 fat_time_fat2unix(sbi, &inode->i_mtime, de->time, de->date, 0);
 if (sbi->options.isvfat) {
  fat_time_fat2unix(sbi, &inode->i_ctime, de->ctime,
      de->cdate, de->ctime_cs);
  fat_time_fat2unix(sbi, &inode->i_atime, 0, de->adate, 0);
 } else
  inode->i_ctime = inode->i_atime = inode->i_mtime;

 return 0;
}
